import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc/config/theme/app_color.dart';
import 'package:learn_bloc/presentation/pages/discover/component/bottom_menu.dart';
import 'package:learn_bloc/presentation/pages/discover/discover_state.dart';
import 'package:learn_bloc/presentation/pages/welcome/login/plan/plan_view.dart';

import 'discover_cubit.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => DiscoverCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<DiscoverCubit>(context);

    return Scaffold(
      backgroundColor: AppColor.ink06,
      body: Column(
        children: [
          Expanded(child: BlocBuilder<DiscoverCubit, DiscoverState>(
            builder: (context, state) {
              return state.selectIndex == 0
                  ? PlanPage()
                  : state.selectIndex == 1
                      ? Container(
                          color: AppColor.ink05,
                        )
                      : Container(
                          color: AppColor.ink05,
                        );
            },
          )),
          // BlocBuilder<DiscoverCubit, DiscoverState>(
          //   builder: (context, state) {
          //     return BottomMenu(cubit: cubit);
          //   },
          // ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Icon(Icons.add),
        onPressed: () async {},
      ),
    );
  }
}
