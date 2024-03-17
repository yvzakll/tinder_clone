import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? editingController;
  final IconData? iconData;
  final String? assetRef;
  final String? labelText;
  final bool? isObscure;

  const CustomTextField(
      {super.key,
      this.editingController,
      this.iconData,
      this.assetRef,
      this.labelText,
      this.isObscure});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: editingController,
      obscureText: isObscure!,
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: labelText,
          prefixIcon: iconData != null
              ? Icon(iconData)
              : Padding(
                  padding: const EdgeInsets.all(4),
                  child: Image.asset(
                    assetRef.toString(),
                  ),
                ),
          labelStyle: const TextStyle(fontSize: 18),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: const BorderSide(color: Colors.grey))),
    );
  }
}
