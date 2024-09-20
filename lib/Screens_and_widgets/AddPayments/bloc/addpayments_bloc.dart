import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'addpayments_event.dart';
part 'addpayments_state.dart';

class AddpaymentsBloc extends Bloc<AddpaymentsEvent, AddpaymentsState> {
  AddpaymentsBloc() : super(AddpaymentsInitial()) {
    on<DropDownEvent>(dropDownEvent);
    on<DateEvent>(dateEvent);
    on<FrequncyDropDownEvent>(frequncyDropDownEvent);
    on<SaveBtnEvent>(saveBtnEvent);
  }

  FutureOr<void> dropDownEvent(DropDownEvent event, Emitter<AddpaymentsState> emit) async {
    final currentState = state;

    // Check if the current state is DropDownMenuAndSelectedDateState
    if (currentState is DropDownMenuAndSelectedDateState) {
      emit(DropDownMenuAndSelectedDateState(
        selecteditem: event.selectedItem,
        formattedDate: currentState.formattedDate,
        SelectedFrequency: currentState.SelectedFrequency,
        menuItem: currentState.menuItem,
        frequencyitems: currentState.frequencyitems,
      ));
    } else if (currentState is AddpaymentsInitial) {
      emit(DropDownMenuAndSelectedDateState(
        selecteditem: event.selectedItem,
        formattedDate: currentState.selectedDate,
        SelectedFrequency: currentState.SelectedFrequency,
        menuItem: currentState.menuItem,
        frequencyitems: currentState.frequencyitems,
      ));
    }
  }

  FutureOr<void> dateEvent(DateEvent event, Emitter<AddpaymentsState> emit) async {
    final formattedDate = DateFormat('yyyy-MM-dd').format(event.selecteddate);

    final currentState = state;

    // Check if the current state is DropDownMenuAndSelectedDateState
    if (currentState is DropDownMenuAndSelectedDateState) {
      emit(DropDownMenuAndSelectedDateState(
        selecteditem: currentState.selecteditem,
        formattedDate: formattedDate,
        SelectedFrequency: currentState.SelectedFrequency,
        menuItem: currentState.menuItem,
        frequencyitems: currentState.frequencyitems,
      ));
    } else if (currentState is AddpaymentsInitial) {
      emit(DropDownMenuAndSelectedDateState(
        selecteditem: currentState.selecteditem,
        formattedDate: formattedDate,
        SelectedFrequency: currentState.SelectedFrequency,
        menuItem: currentState.menuItem,
        frequencyitems: currentState.frequencyitems,
      ));
    }
  }

  FutureOr<void> frequncyDropDownEvent(FrequncyDropDownEvent event, Emitter<AddpaymentsState> emit) async {
    final currentState = state;

    // Check if the current state is DropDownMenuAndSelectedDateState
    if (currentState is DropDownMenuAndSelectedDateState) {
      emit(DropDownMenuAndSelectedDateState(
        selecteditem: currentState.selecteditem,
        formattedDate: currentState.formattedDate,
        SelectedFrequency: event.selectedFrequency,
        menuItem: currentState.menuItem,
        frequencyitems: currentState.frequencyitems,
      ));
    } else if (currentState is AddpaymentsInitial) {
      emit(DropDownMenuAndSelectedDateState(
        selecteditem: currentState.selecteditem,
        formattedDate: currentState.selectedDate,
        SelectedFrequency: event.selectedFrequency,
        menuItem: currentState.menuItem,
        frequencyitems: currentState.frequencyitems,
      ));
    }
  }

  FutureOr<void> saveBtnEvent(SaveBtnEvent event, Emitter<AddpaymentsState> emit)async {
    emit(SaveAllDataState());
  }
}
