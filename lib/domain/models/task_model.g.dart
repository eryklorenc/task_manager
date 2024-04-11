// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskModelImpl _$$TaskModelImplFromJson(Map<String, dynamic> json) =>
    _$TaskModelImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      owner: json['owner'] as String,
      dueDate: DateTime.parse(json['dueDate'] as String),
      priority: json['priority'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$TaskModelImplToJson(_$TaskModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'owner': instance.owner,
      'dueDate': instance.dueDate.toIso8601String(),
      'priority': instance.priority,
      'id': instance.id,
    };
