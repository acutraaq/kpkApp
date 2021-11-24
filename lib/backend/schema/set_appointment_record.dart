import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'set_appointment_record.g.dart';

abstract class SetAppointmentRecord
    implements Built<SetAppointmentRecord, SetAppointmentRecordBuilder> {
  static Serializer<SetAppointmentRecord> get serializer =>
      _$setAppointmentRecordSerializer;

  @nullable
  DateTime get slot;

  @nullable
  String get reasonOfVisit;

  @nullable
  DocumentReference get doctorDetails;

  @nullable
  String get patientName;

  @nullable
  String get contactDetails;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(SetAppointmentRecordBuilder builder) => builder
    ..reasonOfVisit = ''
    ..patientName = ''
    ..contactDetails = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('setAppointment');

  static Stream<SetAppointmentRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  SetAppointmentRecord._();
  factory SetAppointmentRecord(
          [void Function(SetAppointmentRecordBuilder) updates]) =
      _$SetAppointmentRecord;

  static SetAppointmentRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createSetAppointmentRecordData({
  DateTime slot,
  String reasonOfVisit,
  DocumentReference doctorDetails,
  String patientName,
  String contactDetails,
}) =>
    serializers.toFirestore(
        SetAppointmentRecord.serializer,
        SetAppointmentRecord((s) => s
          ..slot = slot
          ..reasonOfVisit = reasonOfVisit
          ..doctorDetails = doctorDetails
          ..patientName = patientName
          ..contactDetails = contactDetails));
