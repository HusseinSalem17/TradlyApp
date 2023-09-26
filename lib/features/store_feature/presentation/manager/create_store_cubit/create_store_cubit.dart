import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'create_store_state.dart';

class CreateStoreCubit extends Cubit<CreateStoreState> {
  CreateStoreCubit() : super(CreateStoreInitial());
}
