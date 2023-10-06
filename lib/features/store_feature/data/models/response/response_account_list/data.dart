import 'account.dart';

class Data {
  int? totalRecords;
  int? page;
  List<Account>? accounts;

  Data({this.totalRecords, this.page, this.accounts});

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        totalRecords: json['total_records'] as int?,
        page: json['page'] as int?,
        accounts: (json['accounts'] as List<dynamic>?)
            ?.map((e) => Account.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'total_records': totalRecords,
        'page': page,
        'accounts': accounts?.map((e) => e.toJson()).toList(),
      };
}
