// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_type_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserTypeRecord> _$userTypeRecordSerializer =
    new _$UserTypeRecordSerializer();

class _$UserTypeRecordSerializer
    implements StructuredSerializer<UserTypeRecord> {
  @override
  final Iterable<Type> types = const [UserTypeRecord, _$UserTypeRecord];
  @override
  final String wireName = 'UserTypeRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UserTypeRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.isLandLord;
    if (value != null) {
      result
        ..add('isLandLord')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(bool)])));
    }
    value = object.isTenant;
    if (value != null) {
      result
        ..add('isTenant')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(bool)])));
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
  UserTypeRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserTypeRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'isLandLord':
          result.isLandLord.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(bool)]))
              as BuiltList<Object>);
          break;
        case 'isTenant':
          result.isTenant.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(bool)]))
              as BuiltList<Object>);
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

class _$UserTypeRecord extends UserTypeRecord {
  @override
  final BuiltList<bool> isLandLord;
  @override
  final BuiltList<bool> isTenant;
  @override
  final DocumentReference<Object> reference;

  factory _$UserTypeRecord([void Function(UserTypeRecordBuilder) updates]) =>
      (new UserTypeRecordBuilder()..update(updates)).build();

  _$UserTypeRecord._({this.isLandLord, this.isTenant, this.reference})
      : super._();

  @override
  UserTypeRecord rebuild(void Function(UserTypeRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserTypeRecordBuilder toBuilder() =>
      new UserTypeRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserTypeRecord &&
        isLandLord == other.isLandLord &&
        isTenant == other.isTenant &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, isLandLord.hashCode), isTenant.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserTypeRecord')
          ..add('isLandLord', isLandLord)
          ..add('isTenant', isTenant)
          ..add('reference', reference))
        .toString();
  }
}

class UserTypeRecordBuilder
    implements Builder<UserTypeRecord, UserTypeRecordBuilder> {
  _$UserTypeRecord _$v;

  ListBuilder<bool> _isLandLord;
  ListBuilder<bool> get isLandLord =>
      _$this._isLandLord ??= new ListBuilder<bool>();
  set isLandLord(ListBuilder<bool> isLandLord) =>
      _$this._isLandLord = isLandLord;

  ListBuilder<bool> _isTenant;
  ListBuilder<bool> get isTenant =>
      _$this._isTenant ??= new ListBuilder<bool>();
  set isTenant(ListBuilder<bool> isTenant) => _$this._isTenant = isTenant;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UserTypeRecordBuilder() {
    UserTypeRecord._initializeBuilder(this);
  }

  UserTypeRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isLandLord = $v.isLandLord?.toBuilder();
      _isTenant = $v.isTenant?.toBuilder();
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserTypeRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserTypeRecord;
  }

  @override
  void update(void Function(UserTypeRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserTypeRecord build() {
    _$UserTypeRecord _$result;
    try {
      _$result = _$v ??
          new _$UserTypeRecord._(
              isLandLord: _isLandLord?.build(),
              isTenant: _isTenant?.build(),
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'isLandLord';
        _isLandLord?.build();
        _$failedField = 'isTenant';
        _isTenant?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UserTypeRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
