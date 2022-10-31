// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppointmentModel _$AppointmentModelFromJson(Map<String, dynamic> json) =>
    AppointmentModel(
      success: json['success'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => AppointmentData.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$AppointmentModelToJson(AppointmentModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'message': instance.message,
    };

AppointmentData _$AppointmentDataFromJson(Map<String, dynamic> json) =>
    AppointmentData(
      id: json['id'] as int?,
      doctor_name: json['doctor_name'] as String?,
      appointment_date: json['appointment_date'] as String?,
      appointment_time: json['appointment_time'] as String?,
      doctor_department: json['doctor_department'] as String?,
      doctor_image_url: json['doctor_image_url'] as String?,
    );

Map<String, dynamic> _$AppointmentDataToJson(AppointmentData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'doctor_name': instance.doctor_name,
      'appointment_date': instance.appointment_date,
      'appointment_time': instance.appointment_time,
      'doctor_department': instance.doctor_department,
      'doctor_image_url': instance.doctor_image_url,
    };
