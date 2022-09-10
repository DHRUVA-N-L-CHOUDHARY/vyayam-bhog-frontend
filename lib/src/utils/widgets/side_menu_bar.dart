import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vyamshala/src/screens/profile_page.dart';
import 'package:vyamshala/src/screens/setting_page.dart';
import 'package:vyamshala/src/screens/subscription_page.dart';
import 'package:vyamshala/src/utils/widgets/drawer_item.dart';

class Sidemenubar extends StatelessWidget {
  const Sidemenubar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
          child: Column(
            children: [
              headerWidget(),
              const SizedBox(
                height: 40,
              ),
              const Divider(
                thickness: 1,
                height: 10,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 40,
              ),
              DrawerItem(
                  name: "Edit Profile",
                  icon: Icons.person,
                  onPressed: () {
                    Get.to(() => const ProfilePage());
                  }),
                   const SizedBox(height: 30,),
              DrawerItem(
                  name: "Settings",
                  icon: Icons.settings,
                  onPressed: () {
                    Get.to(() => const SettingsPage());
                  }),
                   DrawerItem(
                  name: "Subscription",
                  icon: Icons.subscriptions_rounded,
                  onPressed: () {
                    Get.to(() => const SubscriptionPage());
                  }),
            ],
          ),
        ),
      ),
    );
  }

  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);
    switch (index) {
      case 0:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ProfilePage()));
        break;
      case 1:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SettingsPage()));
        break;
        case 2:
        Navigator.push(context, MaterialPageRoute(builder: (context) => const SubscriptionPage()));
        break;
      default:
        Navigator.pop(context);
    }
  }

   Widget headerWidget() {
    const url = "https://imgs.search.brave.com/oUBPkv5TKYSKCxHLUayOgARXZjsrndLRAXAacEGFDCQ/rs:fit:316:225:1/g:ce/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5R/QTI2cXZhWmtLd1lF/bExlRFpNa2pRSGFM/SCZwaWQ9QXBp";
    return Row(
      children: [
        const CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(url),
        ),
        const SizedBox(width: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Person name', style: TextStyle(fontSize: 14, color: Colors.white)),
            SizedBox(height: 10,),
            Text('person@email.com', style: TextStyle(fontSize: 14, color: Colors.white))
          ],
        )
      ],
    );

  }
}
