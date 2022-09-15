import 'package:flutter/material.dart';

import '../../shared/components/components.dart';
import '../notification_settings/notification_settings_screen.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(" حسابي",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){
              //AppCubit.get(context).changeAppMode();
            },
            icon: const Icon(Icons.brightness_4_outlined,),
          ),
        ],
      ),
      body: Column(
        textDirection: TextDirection.rtl,
        children: [
          SizedBox(height: 40,),
          InkWell(
          onTap: () {},
      child: Ink(
        decoration:  const BoxDecoration(
          gradient: LinearGradient(colors: [Colors.red, Colors.deepOrange]),
        //  borderRadius: BorderRadius.all(Radius.circular(9.0)),
        ),
        height: 60,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            SizedBox(width: 48),
            Expanded(
              child: Center(
                child: Text(
                  "اللغة",
                ),
              ),
            ),
            SizedBox(
              width: 48.0,
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 23.0,
              ),
            )
          ],
        ),
      ),
    ),
          SizedBox(height: 40,),
          InkWell(
            onTap: () {
              navigateTo(context, NotificationSettingsScreen(),);
            },
            child: Ink(
              decoration:  BoxDecoration(
                 gradient: LinearGradient(colors: [Colors.red, Colors.deepOrange]),
              ),
              height: 60,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  SizedBox(width: 48),
                  Expanded(
                    child: Center(
                      child: Text(
                        "اعدادات الاشعارات",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 48.0,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 23.0,
                    ),
                  )
                ],
              ),
            ),
          ),
    ]
      ),
    );
  }
}
