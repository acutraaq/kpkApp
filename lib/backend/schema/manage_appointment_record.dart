import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'manage_appointment_record.g.dart';

abstract class ManageAppointmentRecord
    implements Built<ManageAppointmentRecord, ManageAppointmentRecordBuilder> {
  static Serializer<ManageAppointmentRecord> get serializer =>
      _$manageAppointmentRecordSerializer;

  @nullable
  DocumentReference get appointmentDetails;

  @nullable
  bool get status;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ManageAppointmentRecordBuilder builder) =>
      builder..status = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('manageAppointment');

  static Stream<ManageAppointmentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  ManageAppointmentRecord._();
  factory ManageAppointmentRecord(
          [void Function(ManageAppointmentRecordBuilder) updates]) =
      _$ManageAppointmentRecord;

  static ManageAppointmentRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createManageAppointmentRecordData({
  DocumentReference appointmentDetails,
  bool status,
}) =>
    serializers.toFirestore(
        ManageAppointmentRecord.serializer,
        ManageAppointmentRecord((m) => m
          ..appointmentDetails = appointmentDetails
          ..status = status));
