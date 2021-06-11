import 'package:flutter/material.dart';

class MyLoadingCustomDropdown<T> extends StatelessWidget {
  const MyLoadingCustomDropdown(
      {Key? key,
      required this.label,
      required this.hint,
      required this.onChanged})
      : super(key: key);

  final String label;
  final String hint;
  final Function(T?) onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 5),
          DropdownButtonFormField<T>(
            items: [],
            onChanged: onChanged,
            decoration: InputDecoration(
              suffixIcon: Transform.scale(
                scale: 0.5,
                child: CircularProgressIndicator(),
              ),
              hintText: hint,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(4)),
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              floatingLabelBehavior: FloatingLabelBehavior.never,
            ),
          )
        ],
      ),
    );
  }
}
