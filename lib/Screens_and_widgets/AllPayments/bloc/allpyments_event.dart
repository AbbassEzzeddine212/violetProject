part of 'allpyments_bloc.dart';

@immutable
sealed class AllpymentsEvent {}

final class NavigateToAddPaymentsEvent extends AllpymentsEvent{}