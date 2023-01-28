import 'package:bloc/bloc.dart';

import 'plan_state.dart';

class PlanCubit extends Cubit<PlanState> {
  PlanCubit() : super(PlanState().init());
}
