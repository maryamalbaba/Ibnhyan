// import 'package:device_info_plus/device_info_plus.dart';
// import 'package:flutter/material.dart';
// import 'package:hyan/feature/auth/service/signin.dart';

// class unigedataformobile extends StatelessWidget {
//   const unigedataformobile({super.key});

//   Future<String?> getAndroidId() async {
//     DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
//     AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
//     String andridd = androidInfo.id; 
//     return andridd;// Unique ID for each Android device
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: FutureBuilder(
//             future: getAndroidId(),
//             builder: (context, snapshot) {
//               if (snapshot.hasData) {
//                 return Center(child: Text("${snapshot.data}"));
//               } else {
//                 return CircularProgressIndicator();
//               }
//             }));
//   }
// }
