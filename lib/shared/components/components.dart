
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:semester_project/modules/charity_ads/charity_ads_screen.dart';
import 'package:semester_project/shared/components/constants.dart';

void navigateTo(context,Widget) =>Navigator.push(context,
  MaterialPageRoute(
    builder: (context)=>  Widget,
  ),
);


Widget defaultButton ({
  double width=double.infinity,
  Color background=Colors.deepOrange,
  bool isUpperCase=true,
  double radius= 0,
  required String text,
  required Null Function() function,

}) =>  Container(
  width: width,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(radius,),
    color: background,
  ),
  child: MaterialButton(
    onPressed: function,
    child:  Text(
      isUpperCase? text.toUpperCase():text,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
  ),
);



Widget defaultFormField(
    {
      bool isPassword = false,
      required TextEditingController controller,
      required TextInputType type,
      required String label,
      required IconData prefix,
      IconData? suffix,

      required dynamic Function(dynamic value) onSubmit,

      required String? Function(dynamic value) validate,

      dynamic Function()? suffixPressed,

      dynamic Function(String)? onChange,

      dynamic Function()? onTap,
      bool isClickable = true ,

    })=>TextFormField(
  textDirection: TextDirection.rtl,
  enabled: isClickable,
  obscureText: isPassword,
  controller:controller ,
  onChanged:onChange,
  onTap: onTap,
  keyboardType:type,
  validator: validate,
  onFieldSubmitted: onSubmit ,
  decoration:  InputDecoration(
    labelText: label,
    border: const OutlineInputBorder(),

    prefixIcon: Icon(
      prefix,
      color: Colors.deepOrange,
    ),
    suffixIcon: suffix != null? IconButton(
      onPressed: suffixPressed,
      icon: Icon(
        suffix,

      ),
    ): null,
  ),
);


Widget buildSeparator() => Container(
  height: 1.0,
  width: double.infinity,
  color: Colors.grey[300],
);

Widget buildCharityAdItem(
    )=>
    Container(

      height: 233,

      child: ListView.builder(

        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) => InkWell(
          onTap: (){
            navigateTo(context, const CharityAdsScreen());
          },

          child: Padding(

            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children:[
                    Container(
                      height: 140,
                      width: 140 ,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image:  const DecorationImage(image: NetworkImage("https://static.pexels.com/photos/36753/flower-purple-lical-blosso.jpg"),
                            fit: BoxFit.cover   ),

                      ),

                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text("اسم الجمعية الخيرية",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text("اعلان الجمعية الخيرية",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),

                  ],
                ),



              ],
            ),
          ),
        ),
        itemCount: 10,
      ),
    );


Widget buildCategoryItem()=>
    Container(
      height: 161,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) => InkWell(
          onTap: (){print("ASD");},
          child: Padding(
            padding: const EdgeInsets.all(15.0),

            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 10,),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children:[
                    GestureDetector(

                      onTap: (){
                        print(pics[index].toString());
                      },

                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage(pics[index]) ,
                        height: 96,
                        width: 96,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(donation[index].toString(),
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),
                    ),

                    // Text(pics[index].toString().substring(14,pics[index].toString().length-4),
                    //   style: const TextStyle(
                    //       fontSize: 16,
                    //       fontWeight: FontWeight.bold
                    //   ),
                    // )
                    const SizedBox(
                      height: 8,
                    ),


                  ],
                ),



              ],
            ),
          ),
        ),
        itemCount: pics.length,
      ),
    );

