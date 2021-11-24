import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'prescriptions_record.g.dart';

abstract class PrescriptionsRecord
    implements Built<PrescriptionsRecord, PrescriptionsRecordBuilder> {
  static Serializer<PrescriptionsRecord> get serializer =>
      _$prescriptionsRecordSerializer;

  @nullable
  DocumentReference get prescriptionDetails;

  @nullable
  String get doses;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PrescriptionsRecordBuilder builder) =>
      builder..doses = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('prescriptions');

  static Stream<PrescriptionsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PrescriptionsRecord._();
  factory PrescriptionsRecord(
          [void Function(PrescriptionsRecordBuilder) updates]) =
      _$PrescriptionsRecord;

  static PrescriptionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPrescriptionsRecordData({
  DocumentReference prescriptionDetails,
  String doses,
}) =>
    serializers.toFirestore(
        PrescriptionsRecord.serializer,
        PrescriptionsRecord((p) => p
          ..prescriptionDetails = prescriptionDetails
          ..doses = doses));
