// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diagnosis_test_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiagnosisTestModel _$DiagnosisTestModelFromJson(Map<String, dynamic> json) =>
    DiagnosisTestModel(
      success: json['success'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DiagnosisTestData.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$DiagnosisTestModelToJson(DiagnosisTestModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'message': instance.message,
    };

DiagnosisTestData _$DiagnosisTestDataFromJson(Map<String, dynamic> json) =>
    DiagnosisTestData(
      id: json['id'] as int?,
      patient_name: json['patient_name'] as String?,
      patient_image: json['patient_image'] as String?,
      category: json['category'] as String?,
      report_number: json['report_number'] as String?,
      created_at: json['created_at'] as String?,
      pdf_url: json['pdf_url'] as String?,
    );

Map<String, dynamic> _$DiagnosisTestDataToJson(DiagnosisTestData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'patient_name': instance.patient_name,
      'patient_image': instance.patient_image,
      'category': instance.category,
      'report_number': instance.report_number,
      'created_at': instance.created_at,
      'pdf_url': instance.pdf_url,
    };
