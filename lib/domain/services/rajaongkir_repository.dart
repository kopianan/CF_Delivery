import 'package:cf_delivery/domain/rajaongkir/rajaongkir_data_model.dart';
import 'package:cf_delivery/domain/rajaongkir/rajaongkir_request.dart';
import 'package:cf_delivery/domain/rajaongkir/rajaongkir_response.dart';
import 'package:cf_delivery/domain/rajaongkir/result_data_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:cf_delivery/utils/constants.dart';

abstract class IRajaongkir {
  Future<Either<String, List<RProvince>>> getProvinceListData();
  Future<Either<String, List<RCity>>> getCityListData(String provinceId);
  Future<Either<String, RajaongkirResponse>> getDeliveryCostData(
      RajaongkirRequest request);
}

@LazySingleton(as: IRajaongkir)
class RajaongkirRepository extends IRajaongkir {
  Dio _dio = Dio();

  String onHandleDioError(DioError e) {
    print(e.requestOptions.baseUrl);
    print(e.response);

    switch (e.type) {
      case DioErrorType.connectTimeout:
        return ("Connection Time Out");
      case DioErrorType.sendTimeout:
        return ("Send Timeout");
      case DioErrorType.receiveTimeout:
        return ("Receive Timeout");
      case DioErrorType.response:
        if (e.response!.statusCode == 400) {
          return (e.response!.data['rajaongkir']['status']['description']
              .toString());
        } else
          return ("Response Error");
      case DioErrorType.cancel:
        return ("Connection Cancelled");
      case DioErrorType.other:
        print(e.error);
        return ("Server Error");
    }
  }

  @override
  Future<Either<String, List<RProvince>>> getProvinceListData() async {
    _dio = Dio(BaseOptions(
        baseUrl: Constants.rajaongkirBaseUrl,
        headers: {'key': Constants.rajaongkirKey}));
    Response response;
    try {
      response = await _dio.get(
        '/province',
      );
      final List _data = response.data['rajaongkir']['results'];
      List<RProvince> _listProvince =
          _data.map((e) => RProvince.fromJson(e)).toList();

      return right(_listProvince);
    } on DioError catch (e) {
      return left(onHandleDioError(e));
    }
  }

  @override
  Future<Either<String, List<RCity>>> getCityListData(String provinceId) async {
    _dio = Dio(BaseOptions(
        baseUrl: Constants.rajaongkirBaseUrl,
        headers: {'key': Constants.rajaongkirKey}));
    Response response;
    try {
      response =
          await _dio.get('/city', queryParameters: {'province': provinceId});

      final List _data = response.data['rajaongkir']['results'];
      List<RCity> _listCityData = _data.map((e) => RCity.fromJson(e)).toList();

      return right(_listCityData);
    } on DioError catch (e) {
      return left(onHandleDioError(e));
    }
  }

  @override
  Future<Either<String, RajaongkirResponse>> getDeliveryCostData(
      RajaongkirRequest request) async {
    _dio = Dio(BaseOptions(
        baseUrl: Constants.rajaongkirBaseUrl,
        headers: {'key': Constants.rajaongkirKey}));

    //check request
    List<String> _newCourier = request.courier.split(',');

    List<RajaongkirRequest> _newRequest =
        _newCourier.map((e) => request.copyWith(courier: e)).toList();

    try {
      List<Response> multiResponse = await Future.wait(_newRequest
          .map((e) => _dio.post('/cost', data: e.toJson()))
          .toList());

      List<RajaongkirResponse> listresponse = <RajaongkirResponse>[];

      multiResponse.forEach((element) {
        listresponse
            .add(RajaongkirResponse.fromJson(element.data['rajaongkir']));
      });

      RajaongkirResponse newRajaongkir = RajaongkirResponse();

      List<ResultDataModel> result = <ResultDataModel>[];
      listresponse.forEach((element) {
        result.add(element.results!.first);
      });

      var _result = newRajaongkir.copyWith(
          destinationDetails: listresponse.first.destinationDetails,
          originDetails: listresponse.first.originDetails,
          results: result);
      print(_result.results!.first);
      return right(_result);
    } on DioError catch (e) {
      return left(onHandleDioError(e));
    }
  }
}
//   @override
//   Future<Either<String, RajaongkirResponse>> getDeliveryCostData(
//       RajaongkirRequest request) async {
//     _dio = Dio(BaseOptions(
//         baseUrl: Constants.rajaongkirBaseUrl,
//         headers: {'key': Constants.rajaongkirKey}));

//     Response response;
//     try {
//       response = await _dio.post('/cost', data: request.toJson());

//       final _data = response.data['rajaongkir'];
//       RajaongkirResponse _listCityData = RajaongkirResponse.fromJson(_data);

//       return right(_listCityData);
//     } on DioError catch (e) {
//       return left(onHandleDioError(e));
//     }
//   }
// }
