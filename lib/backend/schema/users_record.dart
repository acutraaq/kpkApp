import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  @nullable
  String get email;

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
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  String get age;

  @nullable
  String get address;

  @nullable
  @BuiltValueField(wireName: 'marital_status')
  String get maritalStatus;

  @nullable
  String get fullName;

  @nullable
  @BuiltValueField(wireName: 'ic_Number')
  String get icNumber;

  @nullable
  String get dateOfBirth;

  @nullable
  bool get isPatient;

  @nullable
  bool get isAdmin;

  @nullable
  bool get isDoctor;

  @nullable
  String get specialty;

  @nullable
  String get gender;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..age = ''
    ..address = ''
    ..maritalStatus = ''
    ..fullName = ''
    ..icNumber = ''
    ..dateOfBirth = ''
    ..isPatient = false
    ..isAdmin = false
    ..isDoctor = false
    ..specialty = ''
    ..gender = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUsersRecordData({
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
  String age,
  String address,
  String maritalStatus,
  String fullName,
  String icNumber,
  String dateOfBirth,
  bool isPatient,
  bool isAdmin,
  bool isDoctor,
  String specialty,
  String gender,
}) =>
    serializers.toFirestore(
        UsersRecord.serializer,
        UsersRecord((u) => u
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber
          ..age = age
          ..address = address
          ..maritalStatus = maritalStatus
          ..fullName = fullName
          ..icNumber = icNumber
          ..dateOfBirth = dateOfBirth
          ..isPatient = isPatient
          ..isAdmin = isAdmin
          ..isDoctor = isDoctor
          ..specialty = specialty
          ..gender = gender));
