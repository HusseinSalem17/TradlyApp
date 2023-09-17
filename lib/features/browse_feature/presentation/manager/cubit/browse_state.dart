part of 'browse_cubit.dart';

sealed class BrowseState extends Equatable {
  const BrowseState();

  @override
  List<Object> get props => [];
}

final class BrowseInitial extends BrowseState {}

final class BrowseLoading extends BrowseState {}

final class BrowseSuccess extends BrowseState {}

final class BrowseFailure extends BrowseState {
  final String errMessage;
  const BrowseFailure(this.errMessage);
}
