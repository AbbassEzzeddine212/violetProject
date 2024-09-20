part of 'addpayments_bloc.dart';

@immutable
sealed class AddpaymentsState {

}

sealed class AddpaymentsActionState extends AddpaymentsState {}

final class AddpaymentsInitial extends AddpaymentsState {
  final String selecteditem='System Payment';
  final List<String> menuItem =const [
    'System Payment',
    'Yearly Maintenance',
    'Hosting renewal',
    'Violet Pro Installation',
    'Violet M Installation',
    'Other...'
  ];

 final selectedDate='';

 final List<String> frequencyitems=const[
   'One-Time Fee',
   'Yearly Payment',
   'Monthly Payment',
 ];
 final String SelectedFrequency='One-Time Fee';

}

final class DropDownMenuAndSelectedDateState extends AddpaymentsState {
  final String selecteditem;
  final List<String> menuItem;
  final String formattedDate;
  final String SelectedFrequency;
  final List<String> frequencyitems;

  DropDownMenuAndSelectedDateState(
      {  this.selecteditem='',
          this.formattedDate='',
        this.SelectedFrequency='',
      this.menuItem = const [
        'System Payment',
        'Yearly Maintenance',
        'Hosting renewal',
        'Violet Pro Installation',
        'Violet M Installation',
        'Other...'
      ],this.frequencyitems=const[
        'One-Time Fee',
        'Yearly Payment',
        'Monthly Payment',
      ]});
}

final class SaveAllDataState extends AddpaymentsActionState{}


