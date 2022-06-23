import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_type_record.g.dart';

abstract class UserTypeRecord
    implements Built<UserTypeRecord, UserTypeRecordBuilder> {
  static Serializer<UserTypeRecord> get serializer =>
      _$userTypeRecordSerializer;

  @nullable
  BuiltList<bool> get isLandLord;

  @nullable
  BuiltList<bool> get isTenant;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UserTypeRecordBuilder builder) => builder
    ..isLandLord = ListBuilder()
    ..isTenant = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('UserType');

  static Stream<UserTypeRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UserTypeRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UserTypeRecord._();
  factory UserTypeRecord([void Function(UserTypeRecordBuilder) updates]) =
      _$UserTypeRecord;

  static UserTypeRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUserTypeRecordData() => serializers.toFirestore(
    UserTypeRecord.serializer,
    UserTypeRecord((u) => u
      ..isLandLord = null
      ..isTenant = null));
