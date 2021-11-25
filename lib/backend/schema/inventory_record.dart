import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'inventory_record.g.dart';

abstract class InventoryRecord
    implements Built<InventoryRecord, InventoryRecordBuilder> {
  static Serializer<InventoryRecord> get serializer =>
      _$inventoryRecordSerializer;

  @nullable
  String get itemName;

  @nullable
  String get itemDetails;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get stock;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(InventoryRecordBuilder builder) => builder
    ..itemName = ''
    ..itemDetails = ''
    ..photoUrl = ''
    ..stock = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('inventory');

  static Stream<InventoryRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  InventoryRecord._();
  factory InventoryRecord([void Function(InventoryRecordBuilder) updates]) =
      _$InventoryRecord;

  static InventoryRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createInventoryRecordData({
  String itemName,
  String itemDetails,
  DateTime createdTime,
  String photoUrl,
  String stock,
}) =>
    serializers.toFirestore(
        InventoryRecord.serializer,
        InventoryRecord((i) => i
          ..itemName = itemName
          ..itemDetails = itemDetails
          ..createdTime = createdTime
          ..photoUrl = photoUrl
          ..stock = stock));
