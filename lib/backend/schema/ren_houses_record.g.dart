// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ren_houses_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RenHousesRecord> _$renHousesRecordSerializer =
    new _$RenHousesRecordSerializer();

class _$RenHousesRecordSerializer
    implements StructuredSerializer<RenHousesRecord> {
  @override
  final Iterable<Type> types = const [RenHousesRecord, _$RenHousesRecord];
  @override
  final String wireName = 'RenHousesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, RenHousesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.houseLocation;
    if (value != null) {
      result
        ..add('houseLocation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.houseBedRoom;
    if (value != null) {
      result
        ..add('houseBedRoom')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.houseLivingRoom;
    if (value != null) {
      result
        ..add('houseLivingRoom')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.houseBath;
    if (value != null) {
      result
        ..add('houseBath')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  RenHousesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RenHousesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'houseLocation':
          result.houseLocation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'houseBedRoom':
          result.houseBedRoom = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'houseLivingRoom':
          result.houseLivingRoom = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'houseBath':
          result.houseBath = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$RenHousesRecord extends RenHousesRecord {
  @override
  final String houseLocation;
  @override
  final int houseBedRoom;
  @override
  final int houseLivingRoom;
  @override
  final int houseBath;
  @override
  final DocumentReference<Object> reference;

  factory _$RenHousesRecord([void Function(RenHousesRecordBuilder) updates]) =>
      (new RenHousesRecordBuilder()..update(updates)).build();

  _$RenHousesRecord._(
      {this.houseLocation,
      this.houseBedRoom,
      this.houseLivingRoom,
      this.houseBath,
      this.reference})
      : super._();

  @override
  RenHousesRecord rebuild(void Function(RenHousesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RenHousesRecordBuilder toBuilder() =>
      new RenHousesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RenHousesRecord &&
        houseLocation == other.houseLocation &&
        houseBedRoom == other.houseBedRoom &&
        houseLivingRoom == other.houseLivingRoom &&
        houseBath == other.houseBath &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, houseLocation.hashCode), houseBedRoom.hashCode),
                houseLivingRoom.hashCode),
            houseBath.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RenHousesRecord')
          ..add('houseLocation', houseLocation)
          ..add('houseBedRoom', houseBedRoom)
          ..add('houseLivingRoom', houseLivingRoom)
          ..add('houseBath', houseBath)
          ..add('reference', reference))
        .toString();
  }
}

class RenHousesRecordBuilder
    implements Builder<RenHousesRecord, RenHousesRecordBuilder> {
  _$RenHousesRecord _$v;

  String _houseLocation;
  String get houseLocation => _$this._houseLocation;
  set houseLocation(String houseLocation) =>
      _$this._houseLocation = houseLocation;

  int _houseBedRoom;
  int get houseBedRoom => _$this._houseBedRoom;
  set houseBedRoom(int houseBedRoom) => _$this._houseBedRoom = houseBedRoom;

  int _houseLivingRoom;
  int get houseLivingRoom => _$this._houseLivingRoom;
  set houseLivingRoom(int houseLivingRoom) =>
      _$this._houseLivingRoom = houseLivingRoom;

  int _houseBath;
  int get houseBath => _$this._houseBath;
  set houseBath(int houseBath) => _$this._houseBath = houseBath;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  RenHousesRecordBuilder() {
    RenHousesRecord._initializeBuilder(this);
  }

  RenHousesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _houseLocation = $v.houseLocation;
      _houseBedRoom = $v.houseBedRoom;
      _houseLivingRoom = $v.houseLivingRoom;
      _houseBath = $v.houseBath;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RenHousesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RenHousesRecord;
  }

  @override
  void update(void Function(RenHousesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RenHousesRecord build() {
    final _$result = _$v ??
        new _$RenHousesRecord._(
            houseLocation: houseLocation,
            houseBedRoom: houseBedRoom,
            houseLivingRoom: houseLivingRoom,
            houseBath: houseBath,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
