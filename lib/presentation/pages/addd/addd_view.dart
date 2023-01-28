import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_bloc/config/config.dart';
import 'package:learn_bloc/utils/extension/double_extension.dart';

import 'addd_cubit.dart';

class AdddPage extends StatelessWidget {
  const AdddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AdddCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<AdddCubit>(context);

    return Scaffold(
        backgroundColor: AppColor.ink03,
        appBar: AppBar(
          backgroundColor: AppColor.ink02,
          elevation: 0.0,
          title: const Text(
            "Add a new note",
            style: TextStyle(color: AppColor.ink06),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                // controller: ,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Note Title',
                ),
                style: AppFont.title,
              ),
              20.0.height,
              TextField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Add Note',
                ),
                style: AppFont.textnormal,
              ),
            ],
          ),
        ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.ink02,
        onPressed: (){},
        child: const Icon(Icons.save),
      ),
    );
  }
}
