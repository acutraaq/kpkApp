import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'doctors_record.g.dart';

abstract class DoctorsRecord
    implements Built<DoctorsRecord, DoctorsRecordBuilder> {
  static Serializer<DoctorsRecord> get serializer => _$doctorsRecordSerializer;

  @nullable
  String get doctorID;

  @nullable
  String get doctorName;

  @nullable
  String get email;

  @nullable
  String get specialty;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  String get gender;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(DoctorsRecordBuilder builder) => builder
    ..doctorID = ''
    ..doctorName = ''
    ..email = ''
    ..specialty = ''
    ..phoneNumber = ''
    ..gender = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('doctors');

  static Stream<DoctorsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  DoctorsRecord._();
  factory DoctorsRecord([void Function(DoctorsRecordBuilder) updates]) =
      _$DoctorsRecord;

  static DoctorsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createDoctorsRecordData({
  String doctorID,
  String doctorName,
  String email,
  String specialty,
  String phoneNumber,
  String gender,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
}) =>
    serializers.toFirestore(
        DoctorsRecord.serializer,
        DoctorsRecord((d) => d
          ..doctorID = doctorID
          ..doctorName = doctorName
          ..email = email
          ..specialty = specialty
          ..phoneNumber = phoneNumber
          ..gender = gender
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime));
