import 'package:flutter/material.dart';
import 'package:learn_bloc/config/theme/app_font.dart';

class AppInputText extends StatefulWidget {
  const AppInputText({Key? key, this.controller, required this.label})
      : super(key: key);

  final TextEditingController? controller;
  final String label;

  @override
  State<AppInputText> createState() => _AppInputTextState();
}

class _AppInputTextState extends State<AppInputText>{

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
          hintText: widget.label,
          hintStyle: AppFont.textnormal,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
