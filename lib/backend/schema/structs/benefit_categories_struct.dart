// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BenefitCategoriesStruct extends BaseStruct {
  BenefitCategoriesStruct({
    String? id,
    int? createdAt,
    String? name,
  })  : _id = id,
        _createdAt = createdAt,
        _name = name;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "created_at" field.
  int? _createdAt;
  int get createdAt => _createdAt ?? 0;
  set createdAt(int? val) => _createdAt = val;

  void incrementCreatedAt(int amount) => createdAt = createdAt + amount;

  bool hasCreatedAt() => _createdAt != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  static BenefitCategoriesStruct fromMap(Map<String, dynamic> data) =>
      BenefitCategoriesStruct(
        id: data['id'] as String?,
        createdAt: castToType<int>(data['created_at']),
        name: data['name'] as String?,
      );

  static BenefitCategoriesStruct? maybeFromMap(dynamic data) => data is Map
      ? BenefitCategoriesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static BenefitCategoriesStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      BenefitCategoriesStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BenefitCategoriesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BenefitCategoriesStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([id, createdAt, name]);
}

BenefitCategoriesStruct createBenefitCategoriesStruct({
  String? id,
  int? createdAt,
  String? name,
}) =>
    BenefitCategoriesStruct(
      id: id,
      createdAt: createdAt,
      name: name,
    );