import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'house_posts_record.g.dart';

abstract class HousePostsRecord
    implements Built<HousePostsRecord, HousePostsRecordBuilder> {
  static Serializer<HousePostsRecord> get serializer =>
      _$housePostsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'house_post')
  String get housePost;

  @nullable
  DocumentReference get user;

  @nullable
  @BuiltValueField(wireName: 'created_at')
  DateTime get createdAt;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(HousePostsRecordBuilder builder) =>
      builder..housePost = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('HousePosts');

  static Stream<HousePostsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<HousePostsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  HousePostsRecord._();
  factory HousePostsRecord([void Function(HousePostsRecordBuilder) updates]) =
      _$HousePostsRecord;

  static HousePostsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createHousePostsRecordData({
  String housePost,
  DocumentReference user,
  DateTime createdAt,
}) =>
    serializers.toFirestore(
        HousePostsRecord.serializer,
        HousePostsRecord((h) => h
          ..housePost = housePost
          ..user = user
          ..createdAt = createdAt));
