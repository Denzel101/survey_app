// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OptionHiveModelAdapter extends TypeAdapter<OptionHiveModel> {
  @override
  final int typeId = 2;

  @override
  OptionHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OptionHiveModel(
      value: fields[0] as String,
      display_text: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, OptionHiveModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.value)
      ..writeByte(1)
      ..write(obj.display_text);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OptionHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
