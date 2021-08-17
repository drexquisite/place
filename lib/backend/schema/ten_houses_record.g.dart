// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ten_houses_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TenHousesRecord> _$tenHousesRecordSerializer =
    new _$TenHousesRecordSerializer();

class _$TenHousesRecordSerializer
    implements StructuredSerializer<TenHousesRecord> {
  @override
  final Iterable<Type> types = const [TenHousesRecord, _$TenHousesRecord];
  @override
  final String wireName = 'TenHousesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, TenHousesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.houseChoice;
    if (value != null) {
      result
        ..add('HouseChoice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  TenHousesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TenHousesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'HouseChoice':
          result.houseChoice = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$TenHousesRecord extends TenHousesRecord {
  @override
  final String houseChoice;
  @override
  final DocumentReference<Object> reference;

  factory _$TenHousesRecord([void Function(TenHousesRecordBuilder) updates]) =>
      (new TenHousesRecordBuilder()..update(updates)).build();

  _$TenHousesRecord._({this.houseChoice, this.reference}) : super._();

  @override
  TenHousesRecord rebuild(void Function(TenHousesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TenHousesRecordBuilder toBuilder() =>
      new TenHousesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TenHousesRecord &&
        houseChoice == other.houseChoice &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, houseChoice.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TenHousesRecord')
          ..add('houseChoice', houseChoice)
          ..add('reference', reference))
        .toString();
  }
}

class TenHousesRecordBuilder
    implements Builder<TenHousesRecord, TenHousesRecordBuilder> {
  _$TenHousesRecord _$v;

  String _houseChoice;
  String get houseChoice => _$this._houseChoice;
  set houseChoice(String houseChoice) => _$this._houseChoice = houseChoice;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  TenHousesRecordBuilder() {
    TenHousesRecord._initializeBuilder(this);
  }

  TenHousesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _houseChoice = $v.houseChoice;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TenHousesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TenHousesRecord;
  }

  @override
  void update(void Function(TenHousesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TenHousesRecord build() {
    final _$result = _$v ??
        new _$TenHousesRecord._(houseChoice: houseChoice, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
