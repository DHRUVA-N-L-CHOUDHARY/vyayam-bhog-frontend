import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:vyamshala/src/config/constants/size_config.dart';

class DatePicker extends StatefulWidget {
  final Function(DateTime) onChanged;
  final DateTime? initialDate;
  final DateTime? finalDate;
  const DatePicker({Key? key, required this.onChanged, this.initialDate, this.finalDate})
      : super(key: key);

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  late String dateTime;
  DateTime selectedDate = DateTime.now();
  final TextEditingController _dateController = TextEditingController();
  Future<DateTime> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: widget.initialDate ?? DateTime(2015),
        lastDate: widget.finalDate ?? DateTime.now());
    if (picked != null) {
      setState(() {
        selectedDate = picked;
        _dateController.text =
            formatDate(selectedDate, [yyyy, '-', mm, '-', dd]);
      });
    }
    return selectedDate;
  }

  @override
  void initState() {
    _dateController.text = formatDate(DateTime.now(), [yyyy, '-', mm, '-', dd]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    dateTime = formatDate(DateTime.now(), [yyyy, '-', mm, '-', dd]);
    return InkWell(
      onTap: () async {
        DateTime date = await _selectDate(context);
        widget.onChanged(date);
      },
      // ignore: avoid_unnecessary_containers
      child: Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: SizeConfig(context).getProportionatePadding(),
                    horizontal: 0),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(
                              SizeConfig(context).getProportionateroundess()))),
                      suffixIcon: const Icon(
                        Icons.calendar_month_rounded,
                        color: Colors.grey,
                      )),
                  enabled: false,
                  controller: _dateController,
                  onSaved: (String? val) {},
                ),
              ),
            ]),
      ),
    );
  }
}
