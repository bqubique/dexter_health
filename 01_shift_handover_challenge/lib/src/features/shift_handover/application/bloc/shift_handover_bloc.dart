import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shift_handover_challenge/src/features/shift_handover/application/bloc/shift_handover_events.dart';
import 'package:shift_handover_challenge/src/features/shift_handover/application/bloc/shift_handover_state.dart';
import 'package:shift_handover_challenge/src/features/shift_handover/data/shift_handover_service.dart';
import 'package:shift_handover_challenge/src/features/shift_handover/domain/models/handover_note.dart';

class ShiftHandoverBloc extends Bloc<ShiftHandoverEvent, ShiftHandoverState> {
  final ShiftHandoverService _service;

  ShiftHandoverBloc(this._service) : super(const ShiftHandoverState()) {
    on<LoadShiftReport>(_onLoadShiftReport);
    on<AddNewNote>(_onAddNewNote);
    on<SubmitReport>(_onSubmitReport);
  }

  Future<void> _onLoadShiftReport(
    LoadShiftReport event,
    Emitter<ShiftHandoverState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, clearError: true));
    try {
      final report = await _service.getShiftReport(event.caregiverId);
      emit(state.copyWith(report: report, isLoading: false));
    } catch (e) {
      emit(state.copyWith(error: e.toString(), isLoading: false));
    }
  }

  Future<void> _onAddNewNote(
    AddNewNote event,
    Emitter<ShiftHandoverState> emit,
  ) async {
    if (state.report == null) return;

    final newNote = HandoverNote(
      id: 'note-${Random().nextInt(1000)}',
      text: event.text,
      type: event.type,
      timestamp: DateTime.now(),
      authorId: state.report!.caregiverId,
    );

    try {
      final updatedReport = await _service.addNote(newNote);
      emit(state.copyWith(report: updatedReport));
    } catch (e) {
      print("❌ Failed to add note: $e");
      // Optionally emit error state here if needed:
      emit(state.copyWith(error: e.toString()));
    }
  }

  Future<void> _onSubmitReport(
    SubmitReport event,
    Emitter<ShiftHandoverState> emit,
  ) async {
    if (state.report == null) return;

    emit(state.copyWith(isSubmitting: true, clearError: true));
    try {
      final updatedReport = state.report!;
      updatedReport.submitReport(event.summary);

      final success = await _service.submitShiftReport(updatedReport);

      if (success) {
        emit(state.copyWith(report: updatedReport, isSubmitting: false));
      } else {
        emit(state.copyWith(
            error: 'Failed to submit report', isSubmitting: false));
      }
    } catch (e) {
      emit(state.copyWith(error: e.toString(), isSubmitting: false));
    }
  }
}
