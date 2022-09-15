import 'package:flutter/material.dart';

import '../../shared/components/components.dart';
import '../../shared/components/constants.dart';

class CharityAdsScreen extends StatelessWidget {
  const CharityAdsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            textDirection: TextDirection.rtl,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const Text("تفاصيل الاعلان",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold
                ),
              ),
              Image(
                fit: BoxFit.cover,
                image: AssetImage(pics[0]) ,
                height: 200,
                width: 200,
              ),
              const Text("اسم الجمعية: النور",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8,),

              const Text("التفاصيل: احتياج لملابس",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,

                ),
              ),
              const SizedBox(height: 8,),


              const Text("العنوان: دير عطية",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,

                ),
              ),
              const SizedBox(height: 8,),


              const Text("الرقم: 0987654321",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,

                ),
              ),
              const SizedBox(height: 8,),



              const Text('ساعات العمل: 8-3',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,

                ),
              ),
              const SizedBox(height: 8,),


              const Text('ايام الافتتاح: الاحد-الاثنين',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,

                ),
              ),
              const SizedBox(height: 55,),

              defaultButton(text: 'التبرع', function: () {  }

              ),

            ],
          ),
        ),
      ),
    );
  }
}
