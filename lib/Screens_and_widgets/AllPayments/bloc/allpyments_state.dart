part of 'allpyments_bloc.dart';

@immutable
sealed class AllpymentsState {}
sealed class AllpymentsActionState extends AllpymentsState{}

final class AllpymentsInitial extends AllpymentsState {}

final class NavigateToAddPaymentsState extends AllpymentsActionState{}