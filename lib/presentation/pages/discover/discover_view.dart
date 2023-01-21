import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc/config/theme/app_color.dart';
import 'package:learn_bloc/presentation/pages/discover/component/bottom_menu.dart';
import 'package:learn_bloc/presentation/pages/discover/discover_state.dart';

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
      backgroundColor: AppColor.ink05,
      body: Column(
        children: [
          Expanded(child: BlocBuilder<DiscoverCubit, DiscoverState>(
            builder: (context, state) {
              return state.selectIndex == 0
                  ? Container(
                      color: Colors.red,
                    )
                  : state.selectIndex == 1
                      ? Container(
                          color: Colors.blue,
                        )
                      : Container(
                          color: Colors.green,
                        );
            },
          )),
          BlocBuilder<DiscoverCubit, DiscoverState>(
            builder: (context, state) {
              return BottomMenu(cubit: cubit);
            },
          )
        ],
      ),
    );
  }
}
