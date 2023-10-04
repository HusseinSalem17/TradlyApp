import 'account.dart';

class CreateStoreModel {
  Account? account;

  CreateStoreModel({this.account});

  factory CreateStoreModel.fromJson(Map<String, dynamic> json) {
    return CreateStoreModel(
      account: json['account'] == null
          ? null
          : Account.fromJson(json['account'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
    'account': account?.toJson(),
  };
}
