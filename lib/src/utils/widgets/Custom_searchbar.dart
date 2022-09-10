import 'package:flutter/material.dart';
import 'package:vyamshala/src/config/constants/colors.dart';
import 'package:vyamshala/src/config/constants/size_config.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.all(
              SizeConfig(context).getProportionatePadding() * 3),
          child: SizedBox(
            height: SizeConfig(context).getProportionateScreenHeight(55),
            width: double.infinity,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(
                      SizeConfig(context).getProportionateroundess()))),
              child: Stack(
                //alignment:new Alignment(x, y)
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  // ignore: prefer_const_constructors
                  Positioned(
                    child: const Align(
                      alignment: FractionalOffset.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Icon(
                          Icons.search_rounded,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  Positioned(
                    child: const Align(
                        alignment: FractionalOffset.center,
                        child: SizedBox(
                          width: double.infinity,
                          child: TextField(
                            decoration: InputDecoration(
                              // border: OutlineInputBorder(),
                              hintText: 'Search Foodish',
                            ),
                          ),
                        )
                        ),
                  ),
                  // ignore: prefer_const_constructors
                  Positioned(
                    child: const Align(
                      alignment: FractionalOffset.centerRight,
                      child: Icon(
                        Icons.filter_list,
                        size: 40,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
        );
  }
}
 // children: [
          //   SizedBox(
          //     height: SizeConfig(context).getProportionateScreenHeight(40),
          //   ),
          //   Center(
          //     child: SizedBox(
          //       height: SizeConfig(context).getProportionateScreenHeight(55),
          //       width: SizeConfig(context).getProportionateScreenWidth(330),
          //       child: DecoratedBox(
          //         // ignore: sort_child_properties_last
          //         decoration: BoxDecoration(
          //             color: kPrimaryColor,
          //             borderRadius: BorderRadius.all(Radius.circular(
          //                 SizeConfig(context).getProportionateroundess()))),
          //         child: Column(
          //           children: [
          //             SizedBox(
          //               height: SizeConfig(context)
          //                   .getProportionateScreenHeight(10),
          //             ),
          //             Row(children: [
          //               Column(
          //                   // ignore: prefer_const_literals_to_create_immutables
          //                   children: [
          //                     const Icon(
          //                       Icons.search_rounded,
          //                       size: 40,
          //                     )
          //                   ]),
          //               Column(
          //                   // ignore: prefer_const_literals_to_create_immutables
          //                   children: [
          //                     SizedBox(
          //                       width: SizeConfig(context)
          //                           .getProportionateScreenWidth(240),
          //                     )
          //                   ]),
          //               Column(
          //                 // ignore: prefer_const_literals_to_create_immutables
          //                 children: [
          //                   const Icon(
          //                     Icons.filter_list,
          //                     size: 40,
          //                   )
          //                 ],
          //               )
          //             ]),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          // ],