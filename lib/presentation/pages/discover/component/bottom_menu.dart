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
      height: 70.0,
      margin: EdgeInsets.only(left: 70, right: 70),
      decoration: const BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildItem(
            onTap: () => cubit.changeIndex(0),
            icon: Icons.add,
            isSelected: cubit.state.selectIndex == 0, title: '',
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: (){},
      //   icon: Icon(Icons.add),
      //   label: Text("add"),
      // ),
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
          ),
        ],
      ),
    );
  }
}
