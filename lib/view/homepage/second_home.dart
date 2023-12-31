
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lepton_sapor/demo.dart';
import 'package:lepton_sapor/view/constant/constant.dart';
import 'package:lepton_sapor/view/drawer/drawer.dart';
import 'package:lepton_sapor/view/homepage/widgets/carosel_slider.dart/carosel_slider.dart';
import 'package:lepton_sapor/view/colors/colors.dart';
import 'package:lepton_sapor/view/fonts/googleMonstre.dart';
import 'package:lepton_sapor/view/menu%20items%20page/menu_list.dart';
import 'package:lepton_sapor/view/open%20image%20picker/image_picker.dart';
import 'package:lepton_sapor/view/widget/bottomnavbar/bottom_nav_bar.dart';
import 'package:lepton_sapor/view/widget/search_bar.dart';
import 'package:text_scroll/text_scroll.dart';

import '../bottomnavbar/bottom_nav_bar.dart';


class HalfHomePage extends StatefulWidget {
  const HalfHomePage({super.key});

  @override
  State<HalfHomePage> createState() => _HalfHomePageState();
}

class _HalfHomePageState extends State<HalfHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(72.h),
          child: AppBar(
            backgroundColor: Color.fromARGB(255, 25, 42, 68), elevation: 0,
            //cred,
            // Colors.transparent,elevation: 0,

             leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu,
              color: cwhite,
              size: 32.w,),
              onPressed: () {
                Scaffold.of(context).openDrawer(); // This is to open the side drawer when the icon is pressed.
              },
            );
          },
        ),
            title: SearchBarWidget(),
            actions: [
              Container(
                margin: EdgeInsets.only(right: 10.w),
                child: IconButton(
                    onPressed: () {
                //    Navigator.push(context, MaterialPageRoute(builder: (context) => ImagePickerName(),));
                    },
                    icon:  Icon(
                      Icons.shopping_cart,
                      color: cwhite,
                      size: size.width/12,
                    )),
              ),
            ],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 91, 114,163),

       drawer: Drawer(

        child: SideDrawer(),
      ),
        body: SingleChildScrollView(
          child: SizedBox(
          
            height: size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                sh20,


                Container(
                  // decoration: BoxDecoration(
                  //   color: Color.fromARGB(255, 91, 114,163),
                  //   ),
                  height: 440.h,
                  width: double.infinity,
                  child: Carosel(),  /////////////////////////////////////////  Carosel slider    
                ),
                //sh25,
                
                 sh20,
                // sh20,

                Container(
                  height: 80,
                  width: 300,
                  
                  child:   Center(
                    child: 
                    TextScroll(
                      'ഓണസദ്യ ബുക്കിംഗിനായി, Please click here !',
                      intervalSpaces: 10,
                      velocity: Velocity(pixelsPerSecond: Offset(50, 0)),
                      style:  GoogleFonts.montserrat(
                                    color: cwhite,
                                    // Colors.white.withOpacity(0.5),
                                    fontSize: 15.w,
                                    fontWeight: FontWeight.w600),

                    ),
                   
                  
                                
                  ),
                ),
                

                 Container(
                 
                  
                   child: TabBar(
                  //  dividerColor: ,
                    indicatorColor: Colors.white,
                     controller: _tabController,
                     tabs: [
                       Container(
                        height: 100.h,
                         decoration: BoxDecoration(
                                         gradient: llGradient,
                                           shape: BoxShape.circle,
                                       //  borderRadius: BorderRadius.all(Radius.circular(50.w))
                                           ),
                        
                         child: Tab(child: Center(child: GoogleMonstserratWidgets(
                           text: 'Breakfast', fontsize: 12.w,color: cwhite,))),
                       ),


                       Container(
                        height: 100.h,
                         decoration: BoxDecoration(
                                         gradient: llGradient,
                                           shape: BoxShape.circle,
                                       //  borderRadius: BorderRadius.all(Radius.circular(50.w))
                                           ),
                        child: Tab(child:Center(child: GoogleMonstserratWidgets(text: 'Lunch', fontsize: 13.w,color: cwhite,)) )),


                       Container(
                        height: 100.h,
                         decoration: BoxDecoration(
                                         gradient: llGradient,
                                           shape: BoxShape.circle,
                                       //  borderRadius: BorderRadius.all(Radius.circular(50.w))
                                           ),
                        
                        child: Tab(child:Center(child: GoogleMonstserratWidgets(text: 'Dinner', fontsize: 13.w,color: cwhite,)),)),
                       Container(
                        height: 100.h,
                         decoration: BoxDecoration(
                                         gradient: llGradient,
                                           shape: BoxShape.circle,
                                       //  borderRadius: BorderRadius.all(Radius.circular(50.w))
                                           ),
                        
                        child: Tab(child:Center(child: GoogleMonstserratWidgets(text: 'Special', fontsize: 13.w,color: cwhite,)) )),
                     ],
                   ),
                 ),
                 // TabBarView to display the content for each tab
                 Expanded(
                   child: TabBarView(
                     controller: _tabController,
                     children: [ 

                      MenuListItems(),

                      MenuListItems(),

                      MenuListItems(),

                      MenuListItems(),
                     
                     ],
                   ),
                 ),
              ],
            ),
          ),
        ),
        bottomNavigationBar:  BottomNavBar(),
      ),
    );
  }
}

class ListViewBuilderWidget extends StatelessWidget {
   ListViewBuilderWidget({
    required this.image,
    required this.text,
    required this.description,

    super.key,
  });
  String image;
  String text;
  String description;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          itemCount: 5, 
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.asset(
                image,
                width: 48,
                height: 48,
              ),
              title: Text(text), 
              subtitle: Text(description), 
              onTap: () {
              
              },
            );
          },
        );
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
    
      currentIndex: _currentIndex,
      onTap: _onTabTapped,
      backgroundColor: Color.fromARGB(255, 25, 42, 68),
      //Color(0XFFffd04e), // Set the background color here
      selectedItemColor: Colors.blue, // Set the selected item color here
      unselectedItemColor: cwhite,
      items:  const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.percent,),
          label: 'Offers',
        ),
         BottomNavigationBarItem(
          icon: Icon(Icons.favorite_sharp, color: Colors.red),
          label: 'My Fav',
        ),
         BottomNavigationBarItem(
          icon: Icon(Icons.insert_emoticon_outlined),
          label: 'My Sapor',
        ),

      ],
    );
  }
}

class ScrollingCateogryWidget extends StatelessWidget {
  ScrollingCateogryWidget({
    this.color,
    required this.text,
    this.width,
    //this.colors,
    super.key,
  });
  Color? color;
  String text;

  double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(left: 20,right: 20),
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0XFFF2BC57),
              Color(0XFFF2BC57),
            ],
          ),
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      width: width,

      child: Center(
        child:
            GoogleMonstserratWidgets(fontsize: 14, text: text, color: cblack),
      ),
    );
  }
}
