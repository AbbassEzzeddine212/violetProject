part of 'addpayments_bloc.dart';

@immutable
sealed class AddpaymentsState {}

sealed class AddpaymentsActionState extends AddpaymentsState {}

final class AddpaymentsInitial extends AddpaymentsState {}


