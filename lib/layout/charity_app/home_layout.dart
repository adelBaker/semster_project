import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:semester_project/layout/charity_app/cubit/cubit.dart';
import 'package:semester_project/layout/charity_app/cubit/states.dart';

import '../../modules/charity_ads/charity_ads_screen.dart';
import '../../shared/components/components.dart';

class HomeLayout extends StatelessWidget {

  HomeLayout({Key? key}) : super(key: key);


    var searchController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state){},
      builder: (BuildContext context, state) {

            var cubit=AppCubit.get(context);
        return Scaffold(

          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.deepOrange,

            currentIndex: cubit.currentIndex,
            onTap: (index){
              cubit.changeBottomNavBar(index);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.business_outlined,
                ),
                label: "Charities",

              ),

              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home",

              ),

              BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_balance_wallet_outlined,
                ),
                label: "Donations",

              ),

              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: "My Account",

              ),

            ],

          ),

        );
      },
    );
  }
}