import 'package:bloc/bloc.dart';

import 'addd_state.dart';

class AdddCubit extends Cubit<AdddState> {
  AdddCubit() : super(AdddState().init());
}
