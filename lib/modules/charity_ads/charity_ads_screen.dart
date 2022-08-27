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
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const Text("Ad details",
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
              const Text("Association name: Mongo",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),

              const SizedBox(height: 8,),

              const Text(  "Details: I need clothes",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 8,),


              const Text("Address: Deir Atiyah",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 8,),


              const Text("Number: 0987654321",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 8,),



              const Text('Working: hours: 8-3',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 8,),


              const Text('Opening days: Sunday',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 55,),

              defaultButton(text: 'Donation', function: () {  }

              ),

            ],
          ),
        ),
      ),
    );
  }
}
