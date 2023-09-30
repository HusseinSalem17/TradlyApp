// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'key.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class KeyAdapter extends TypeAdapter<Key> {
  @override
  final int typeId = 3;

  @override
  Key read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Key(
      authKey: fields[0] as String?,
      refreshKey: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Key obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.authKey)
      ..writeByte(1)
      ..write(obj.refreshKey);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is KeyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
