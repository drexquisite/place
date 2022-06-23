import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ten_houses_record.g.dart';

abstract class TenHousesRecord
    implements Built<TenHousesRecord, TenHousesRecordBuilder> {
  static Serializer<TenHousesRecord> get serializer =>
      _$tenHousesRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'HouseChoice')
  String get houseChoice;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(TenHousesRecordBuilder builder) =>
      builder..houseChoice = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TenHouses');

  static Stream<TenHousesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<TenHousesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  TenHousesRecord._();
  factory TenHousesRecord([void Function(TenHousesRecordBuilder) updates]) =
      _$TenHousesRecord;

  static TenHousesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createTenHousesRecordData({
  String houseChoice,
}) =>
    serializers.toFirestore(TenHousesRecord.serializer,
        TenHousesRecord((t) => t..houseChoice = houseChoice));
