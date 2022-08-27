import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class HomeLayout extends StatelessWidget {

  HomeLayout({Key? key}) : super(key: key);
  static const _kFontFam = 'MyFlutterApp';
  static const String? _kFontPkg = null;

    var searchController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions:  [
          IconButton(
            onPressed: (){
              //AppCubit.get(context).changeAppMode();
            },
            icon: const Icon(Icons.add,),
          ),
          SizedBox(width: 20.0),
        ],
      ),
      body: Column(
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
          buildCharityAdItem(),
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


        ],
      ),

      );
  }
}