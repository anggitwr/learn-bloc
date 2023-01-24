import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc/config/config.dart';
import 'package:learn_bloc/presentation/pages/welcome/login/plan/plan_cubit.dart';

class YourPlan extends StatelessWidget {
  const YourPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<PlanCubit>(context);
    return Expanded(
      child: Column(
        children: [_header(), _folderList()],
      ),
    );
  }

  Widget _header() {
    return Padding(
      padding: EdgeInsets.only(
          left: AppDimen.w20, right: AppDimen.w10, top: AppDimen.h40),
      child: Row(
        children: [
          Text("Folders", style: AppFont.paragraf1),
        ],
      ),
    );
  }

  Widget _folderList() {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (c, i) => _folderItem(),
        itemCount: 5,
      ),
    );
  }

  Widget _folderItem() {
    return Container(
      height: 172,
      margin: EdgeInsets.only(
          bottom: AppDimen.h10,
          left: AppDimen.w8,
          right: AppDimen.w8
      ),
      padding: EdgeInsets.symmetric(
        horizontal: AppDimen.w16,
        vertical: AppDimen.w20
      ),
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColor.item01,
          borderRadius: BorderRadius.circular(AppDimen.w8)),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Personal Notes",
                  style: AppFont.textnormal,
                ),
                Text(
                  "12",
                  style: AppFont.hero,
                )
              ],
            ),
          ),
          const Icon(Icons.navigate_next),
        ],
      ),
    );
  }
}
