import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hyan/core/resourses/colors_manager.dart';
import 'package:hyan/core/resourses/styles_manager.dart';
import 'package:hyan/core/widgets/otp_field.dart';
import 'package:hyan/core/widgets/useable_green_container.dart';

class SignPage extends StatelessWidget {
  SignPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller1 = TextEditingController();
    TextEditingController controller2 = TextEditingController();
    TextEditingController controller3 = TextEditingController();
    TextEditingController controller4 = TextEditingController();
    TextEditingController controller5 = TextEditingController();
    TextEditingController controller6 = TextEditingController();
    TextEditingController controller7 = TextEditingController();
    TextEditingController controller8 = TextEditingController();

    final screenwidth = MediaQuery.of(context).size.width * 0.8;
    final textfieldwidth = screenwidth / 10;
    return Scaffold(
        backgroundColor: offwhite,
        appBar: AppBar(
          backgroundColor: green,
          title: Text("تسجيل الدخول",style: AppBartext,).tr(),
        ),
        body: Column(
          children: [
            Spacer(
              flex: 2,
            ),
            Padding(
             
              padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*0.05,),
              child: Align(
                  alignment: Alignment.centerRight,
                  child: Text("erter your code",style:style_enter_yourcode).tr()),
            ),
           Spacer(
              flex: 1,
            ),
            Padding(
             
              padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width*0.05,),
              child: Align(alignment: Alignment.centerRight, child: Text("code",style: style_text_code,).tr()),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // spacing: 5,
                children: [
                  OtpField(
                    controller: controller1,
                  ),
                  OtpField(
                    controller: controller2,
                  ),
                  OtpField(
                    controller: controller3,
                  ),
                  OtpField(
                    controller: controller4,
                  ),
                  OtpField(
                    controller: controller5,
                  ),
                  OtpField(
                    controller: controller6,
                  ),
                  OtpField(
                    controller: controller7,
                  ),
                  OtpField(
                    controller: controller8,
                  )
                ],
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Center(
              child: Text.rich(TextSpan(
                text: "did you forget your code".tr(),style: forget_pass,
                 children:[
                  TextSpan(text: "   "),
                  TextSpan(text:"resend".tr(),style: underLine_resend)] 
              ),
                               
              ),
            ),
            Spacer(
              flex: 2,
            ),
            Useable_Green_container(text: "تحققق"),
            Spacer(
              flex: 1,
            )
            //  Text.rich( ),
          ],
        ));
  }
}
