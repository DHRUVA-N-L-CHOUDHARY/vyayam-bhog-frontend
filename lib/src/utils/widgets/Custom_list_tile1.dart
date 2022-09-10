import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vyamshala/src/config/constants/colors.dart';
import 'package:vyamshala/src/config/constants/strings.dart';

class CustomExpansionListTile extends StatefulWidget {
  final String titleinput;
  final String downtext;
  final String icon;
  const CustomExpansionListTile({Key? key, required this.titleinput, required this.downtext, required this.icon}) : super(key: key);

  @override
  State<CustomExpansionListTile> createState() => _CustomExpansionListTileState();
}

class _CustomExpansionListTileState extends State<CustomExpansionListTile> {
final GlobalKey<ExpansionTileCardState> cardA = GlobalKey();

  final GlobalKey<ExpansionTileCardState> cardB = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: ExpansionTileCard(
        key: cardA,
        leading: CircleAvatar(
          backgroundColor: kPrimaryColor,
          child: Image.asset(widget.icon)),
        title: Text(widget.titleinput),
        children: <Widget>[
          const Divider(
            thickness: 1.0,
            height: 1.0,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: Text(
                widget.downtext,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(fontSize: 16),
              ),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceAround,
            buttonHeight: 52.0,
            buttonMinWidth: 90.0,
            children: <Widget>[
              TextButton(
                style: flatButtonStyle,
                onPressed: () {
                  cardB.currentState?.expand();
                },
                child: Column(
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomListTile extends StatefulWidget {
  final String titleinput;
  final String downtext;
  final String icon;
  final void Function()? fn;
  const CustomListTile({Key? key, required this.titleinput, required this.downtext, required this.icon, this.fn}) : super(key: key);

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {

  @override
  Widget build(BuildContext context) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: ListTile(
        leading: CircleAvatar(
            backgroundColor: kPrimaryColor,
            child: Image.asset(widget.icon)),
        title: Text(widget.titleinput),
        onTap: widget.fn,
      ),
    );
  }
}