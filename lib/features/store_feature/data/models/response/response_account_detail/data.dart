import 'account.dart';

class Data {
  Account? account;

  Data({this.account});

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        account: json['account'] == null
            ? null
            : Account.fromJson(json['account'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'account': account?.toJson(),
      };
}
