import 'package:flutter/material.dart';

class MyCustomDropdown<T> extends StatelessWidget {
  const MyCustomDropdown(
      {Key? key,
      required this.label,
      required this.hint,
      required this.dropdownItem,
      required this.onChanged})
      : super(key: key);

  final List<DropdownMenuItem<T>> dropdownItem;
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
            items: dropdownItem,
            onChanged: onChanged,
            decoration: InputDecoration(
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
