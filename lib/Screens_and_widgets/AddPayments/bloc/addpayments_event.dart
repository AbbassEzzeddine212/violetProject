part of 'addpayments_bloc.dart';

@immutable
sealed class AddpaymentsEvent {}

final class DropDownEvent extends AddpaymentsEvent{
  final String selectedItem;

  DropDownEvent({required this.selectedItem});

}

final class DateEvent extends AddpaymentsEvent{
 final DateTime selecteddate;

  DateEvent({required this.selecteddate});

}
final class FrequncyDropDownEvent extends AddpaymentsEvent{
  final String selectedFrequency;

  FrequncyDropDownEvent({required this.selectedFrequency});

}

final class SaveBtnEvent extends AddpaymentsEvent{}