import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../discover_cubit.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({Key? key, required this.cubit}) : super(key: key);
  final DiscoverCubit cubit;

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<DiscoverCubit>(context);
    return Container(
      height: 96.0.h,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildItem(
            onTap: () => cubit.changeIndex(0),
            icon: Icons.home,
            title: 'Home',
            isSelected: cubit.state.selectIndex == 0,
          ),
          _buildItem(
            onTap: () => cubit.changeIndex(1),
            icon: Icons.access_time,
            title: 'Recently',
            isSelected: cubit.state.selectIndex == 1,
          ),
          _buildItem(
            onTap: () => cubit.changeIndex(2),
            icon: Icons.settings,
            title: 'Settings',
            isSelected: cubit.state.selectIndex == 2,
          ),
        ],
      ),
    );
  }

  Widget _buildItem({
    required GestureTapCallback? onTap,
    required IconData icon,
    required String title,
    bool isSelected = false,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isSelected ? Colors.blue : Colors.grey,
          ),
          const SizedBox(height: 4.0),
          Text(
            title,
            style: TextStyle(
                color: isSelected ? Colors.black : Colors.grey,
                fontSize: 12.0.sp),
          )
        ],
      ),
    );
  }
}
