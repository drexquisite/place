import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ren_houses_record.g.dart';

abstract class RenHousesRecord
    implements Built<RenHousesRecord, RenHousesRecordBuilder> {
  static Serializer<RenHousesRecord> get serializer =>
      _$renHousesRecordSerializer;

  @nullable
  String get houseLocation;

  @nullable
  int get houseBedRoom;

  @nullable
  int get houseLivingRoom;

  @nullable
  int get houseBath;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(RenHousesRecordBuilder builder) => builder
    ..houseLocation = ''
    ..houseBedRoom = 0
    ..houseLivingRoom = 0
    ..houseBath = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('RenHouses');

  static Stream<RenHousesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<RenHousesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  RenHousesRecord._();
  factory RenHousesRecord([void Function(RenHousesRecordBuilder) updates]) =
      _$RenHousesRecord;

  static RenHousesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createRenHousesRecordData({
  String houseLocation,
  int houseBedRoom,
  int houseLivingRoom,
  int houseBath,
}) =>
    serializers.toFirestore(
        RenHousesRecord.serializer,
        RenHousesRecord((r) => r
          ..houseLocation = houseLocation
          ..houseBedRoom = houseBedRoom
          ..houseLivingRoom = houseLivingRoom
          ..houseBath = houseBath));
