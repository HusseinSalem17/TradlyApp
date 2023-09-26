import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tradly_app/core/models/product_model.dart';

part 'browse_state.dart';

class BrowseCubit extends Cubit<BrowseState> {
  BrowseCubit() : super(BrowseInitial());
  List<ProductModel>? products;
}
