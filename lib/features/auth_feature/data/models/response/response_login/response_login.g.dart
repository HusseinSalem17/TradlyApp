// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_login.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ResponseLoginAdapter extends TypeAdapter<ResponseLogin> {
  @override
  final int typeId = 0;

  @override
  ResponseLogin read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ResponseLogin(
      status: fields[0] as bool?,
      data: fields[1] as Data?,
    );
  }

  @override
  void write(BinaryWriter writer, ResponseLogin obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.status)
      ..writeByte(1)
      ..write(obj.data);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ResponseLoginAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
