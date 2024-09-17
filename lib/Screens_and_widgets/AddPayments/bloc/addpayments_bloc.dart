
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'addpayments_event.dart';
part 'addpayments_state.dart';

class AddpaymentsBloc extends Bloc<AddpaymentsEvent, AddpaymentsState> {
  AddpaymentsBloc() : super(AddpaymentsInitial());

}
