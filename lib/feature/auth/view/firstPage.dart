import 'package:flutter/material.dart';
import 'package:hyan/core/resourses/assets_manager.dart';
import 'package:hyan/core/resourses/colors_manager.dart';
import 'package:hyan/core/widgets/useable_green_container.dart';
import 'package:hyan/feature/auth/view/sign_page.dart';


class welcomePage extends StatelessWidget {
  const welcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
          decoration: BoxDecoration(
            color: offwhite,
            image: DecorationImage(
              
              image: AssetImage(background),fit: BoxFit.fill),
          ),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.end,
            
            
            children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child:InkWell(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignPage()));
                } ,
                child: Useable_Green_container(text: "تسجيل الدخول",))
              
              )
          ],) ),
    );
  }
}
