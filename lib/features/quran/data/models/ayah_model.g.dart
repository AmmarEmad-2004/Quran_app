// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ayah_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AyahModelAdapter extends TypeAdapter<AyahModel> {
  @override
  final int typeId = 1;

  @override
  AyahModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AyahModel(
      ayah: fields[0] as String,
      number: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, AyahModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.ayah)
      ..writeByte(1)
      ..write(obj.number);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AyahModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
