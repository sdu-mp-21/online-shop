import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:team1/pages/cart_page.dart';
import 'package:team1/pages/menu_page.dart';
import 'package:team1/theme/colors.dart';

Widget getAppBar(context){
    return AppBar(
        elevation: 0,
        backgroundColor: white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(icon: SvgPicture.asset("assets/images/burger_icon.svg"),onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                fullscreenDialog: true,
                builder: (_) => MenuPage()));
        }),
            Row(
              children: <Widget>[
                IconButton(icon: SvgPicture.asset("assets/images/search_icon.svg"), onPressed: ()
                   { Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => SearchPage()));
  
          }),
          IconButton(icon: SvgPicture.asset("assets/images/filter_icon.svg"), onPressed: (){
            
          }),
          IconButton(icon: Container(
            child: Center(
              child: Text("3",style: TextStyle(
                color: white,
                fontSize: 13,
                fontWeight: FontWeight.w600
              ),),
            ),
            decoration: BoxDecoration(
              color: black,
              shape: BoxShape.circle
            ),
          ), onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => CartPage()));
          }),
              ],
            )
          ],
        ),
      );
  }

class SearchPage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
         backgroundColor: Colors.grey,
          // The search area here
          title: Container(
        
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: (
                    
                  ) {
                    /* Clear the search field */
                  },
                ),
                hintText: 'Search...',
                border: InputBorder.none),
          ),
        ),
      )),
    );
  }
}