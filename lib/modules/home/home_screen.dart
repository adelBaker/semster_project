import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class HomeScreen extends StatelessWidget {

  var searchController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: (){
              //AppCubit.get(context).changeAppMode();
            },
            icon: const Icon(Icons.brightness_4_outlined,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children:  [

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: defaultFormField(
                controller: searchController,
                type: TextInputType.text,
                label: "search",
                prefix: Icons.search,
                onSubmit: (value){},
                validate: (value){},
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "CharityAd's",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            buildCharityAdItem(
            ),
            buildSeparator(),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Category To donations",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            buildCategoryItem(),
            buildSeparator(),


          ],
        ),
      ),

    );
  }
}
