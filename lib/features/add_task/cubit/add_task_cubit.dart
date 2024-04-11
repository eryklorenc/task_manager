import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_task_state.dart';
part 'add_task_cubit.freezed.dart';

class AddTaskCubit extends Cubit<AddTaskState> {
  AddTaskCubit() : super(const AddTaskState());

  final _firestore = FirebaseFirestore.instance;
  late StreamSubscription<QuerySnapshot> _streamSubscription;

  void loadTasks() {
    emit(state.copyWith(isLoading: true));

    _streamSubscription = _firestore.collection('category').snapshots().listen((snapshot) {
      final documents = snapshot.docs;
      emit(state.copyWith(
        isLoading: false,
        documents: documents,
      ));
    }, onError: (error) {
      emit(state.copyWith(
        isLoading: false,
        errorMessage: error.toString(),
      ));
    });
  }

  Future<void> deleteDocument(String documentId) async {
    try {
      await _firestore.collection('category').doc(documentId).delete();
    } catch (error) {
      emit(state.copyWith(errorMessage: error.toString()));
    }
  }

  @override
  Future<void> close() {
    _streamSubscription.cancel();
    return super.close();
  }
}
