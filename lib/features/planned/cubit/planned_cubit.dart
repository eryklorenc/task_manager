import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'planned_state.dart';
part 'planned_cubit.freezed.dart';

class PlannedCubit extends Cubit<PlannedState> {
  PlannedCubit() : super(const PlannedState());

  final _firestore = FirebaseFirestore.instance;
  late StreamSubscription<QuerySnapshot> _streamSubscription;

  void loadDocuments() {
    emit(state.copyWith(isLoading: true));

    _streamSubscription =
        _firestore.collection('category').where('Priority', isEqualTo: 'Planned').snapshots().listen((snapshot) {
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
