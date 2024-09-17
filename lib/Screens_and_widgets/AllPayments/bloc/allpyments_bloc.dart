import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'allpyments_event.dart';
part 'allpyments_state.dart';

class AllpymentsBloc extends Bloc<AllpymentsEvent, AllpymentsState> {
  AllpymentsBloc() : super(AllpymentsInitial()) {
    on<NavigateToAddPaymentsEvent>(navigateToAddPaymentsEvent);
  }

  FutureOr<void> navigateToAddPaymentsEvent(NavigateToAddPaymentsEvent event, Emitter<AllpymentsState> emit) {
    emit(NavigateToAddPaymentsState());
  }
}
