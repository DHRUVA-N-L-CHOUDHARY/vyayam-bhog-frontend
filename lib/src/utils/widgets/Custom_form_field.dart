import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vyamshala/src/config/constants/colors.dart';
import 'package:vyamshala/src/config/constants/size_config.dart';

class InputTextwidget extends StatefulWidget {
  final Function(String)? onChanged;
  final String? initialText;
  final IconData iconData;
  final bool option;
  final double height;
  final TextInputType keytype;
  final TextEditingController? textEditingController;
  const InputTextwidget({
    Key? key,
    required this.initialText,
    this.iconData = Icons.abc,
    required this.option,
    this.height = 10.0,
    this.keytype = TextInputType.text,
    this.textEditingController,
    this.onChanged
  }) : super(key: key);

  @override
  State<InputTextwidget> createState() => _InputTextwidgetState();
}

class _InputTextwidgetState extends State<InputTextwidget> {

  @override
  Widget build(BuildContext context) {
    if (widget.option) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding:
                EdgeInsets.all(SizeConfig(context).getProportionatePadding()),
            child: TextFormField(
              key: Key(widget.initialText ?? ""),
              keyboardType: widget.keytype,
              decoration: InputDecoration(
                border: const UnderlineInputBorder(),
                hintText: widget.initialText,
                prefixIcon: Icon(
                  widget.iconData,
                  color: kPrimaryColor,
                ),
              ),
              controller: widget.textEditingController,
            ),
          ),
        ),
      );
    } else {
      return SizedBox(
        height: widget.height,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: SizeConfig(context).getProportionatePadding(),
                    horizontal: 0),
                child: TextFormField(
                  key: Key(widget.initialText ?? ""),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(
                          SizeConfig(context).getProportionateroundess())),
                    ),
                    hintText: widget.initialText,
                  ),
                  controller: widget.textEditingController,
                  // onChanged: widget.onChanged,
                ),
              ),
            ]),
      );
    }
  }
}
