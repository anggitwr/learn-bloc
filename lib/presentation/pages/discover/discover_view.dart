import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc/config/networking/api_client.dart';
import 'package:learn_bloc/config/theme/app_color.dart';
import 'package:learn_bloc/presentation/pages/addd/addd_view.dart';
import 'package:learn_bloc/presentation/pages/discover/discover_state.dart';
import 'package:learn_bloc/presentation/pages/discover/plan/plan_view.dart';


import 'discover_cubit.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});


  @override
  Widget build(BuildContext context) {
    final ApiClient apiClient = ApiClient();
    apiClient.get(Uri.parse("https://6e8d1eaa-90cb-4313-9fa9-ee06ff131bf5.mock.pstmn.io/api/v1/plan"));
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
              return const PlanPage();
              // return state.selectIndex == 0
              //     ? const PlanPage();
                  // : state.selectIndex == 1
                  //     ? Container(
                  //         color: AppColor.ink05,
                  //       )
                  //     : Container(
                  //         color: AppColor.ink05,
                  //       );
            }
          ),
          ),
          // BlocBuilder<DiscoverCubit, DiscoverState>(
          //   builder: (context, state) {
          //     return BottomMenu(cubit: cubit);
          //   },
          // ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: const Icon(Icons.add),
        onPressed: () async {
          await Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const AdddPage())
          );
        },
      ),
    );
  }
}
