// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'house_posts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HousePostsRecord> _$housePostsRecordSerializer =
    new _$HousePostsRecordSerializer();

class _$HousePostsRecordSerializer
    implements StructuredSerializer<HousePostsRecord> {
  @override
  final Iterable<Type> types = const [HousePostsRecord, _$HousePostsRecord];
  @override
  final String wireName = 'HousePostsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, HousePostsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.housePost;
    if (value != null) {
      result
        ..add('house_post')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  HousePostsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HousePostsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'house_post':
          result.housePost = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
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

class _$HousePostsRecord extends HousePostsRecord {
  @override
  final String housePost;
  @override
  final DocumentReference<Object> user;
  @override
  final DateTime createdAt;
  @override
  final DocumentReference<Object> reference;

  factory _$HousePostsRecord(
          [void Function(HousePostsRecordBuilder) updates]) =>
      (new HousePostsRecordBuilder()..update(updates)).build();

  _$HousePostsRecord._(
      {this.housePost, this.user, this.createdAt, this.reference})
      : super._();

  @override
  HousePostsRecord rebuild(void Function(HousePostsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HousePostsRecordBuilder toBuilder() =>
      new HousePostsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HousePostsRecord &&
        housePost == other.housePost &&
        user == other.user &&
        createdAt == other.createdAt &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, housePost.hashCode), user.hashCode), createdAt.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HousePostsRecord')
          ..add('housePost', housePost)
          ..add('user', user)
          ..add('createdAt', createdAt)
          ..add('reference', reference))
        .toString();
  }
}

class HousePostsRecordBuilder
    implements Builder<HousePostsRecord, HousePostsRecordBuilder> {
  _$HousePostsRecord _$v;

  String _housePost;
  String get housePost => _$this._housePost;
  set housePost(String housePost) => _$this._housePost = housePost;

  DocumentReference<Object> _user;
  DocumentReference<Object> get user => _$this._user;
  set user(DocumentReference<Object> user) => _$this._user = user;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  HousePostsRecordBuilder() {
    HousePostsRecord._initializeBuilder(this);
  }

  HousePostsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _housePost = $v.housePost;
      _user = $v.user;
      _createdAt = $v.createdAt;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HousePostsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HousePostsRecord;
  }

  @override
  void update(void Function(HousePostsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HousePostsRecord build() {
    final _$result = _$v ??
        new _$HousePostsRecord._(
            housePost: housePost,
            user: user,
            createdAt: createdAt,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
