import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_task_state.dart';
part 'create_task_cubit.freezed.dart';

@injectable
class CreateTaskCubit extends Cubit<CreateTaskState> {
  CreateTaskCubit() : super(const CreateTaskState());

  final _firestore = FirebaseFirestore.instance;

  Future<void> addTask({
    required String taskName,
    required String taskDescription,
    required String taskOwner,
    required DateTime dueDate,
    required String priority,
  }) async {
    try {
      await _firestore.collection('category').add({
        'Name': taskName,
        'Description': taskDescription,
        'Owner': taskOwner,
        'DueDate': dueDate,
        'Priority': priority,
      });
    } catch (error) {
      emit(state.copyWith(errorMessage: error.toString()));
    }
  }

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      emit(state.copyWith(selectedDate: picked));
    }
  }

  void updatePriority(String priority) {
    emit(state.copyWith(selectedPriority: priority));
  }
}
