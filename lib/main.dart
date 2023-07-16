// import 'package:flutter/material.dart';
// import 'packages/flutter/src/widgets/debug.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('ROYAL SHAZAN'), actions: <Widget>[
//         IconButton(onPressed: () {}, icon: Icon(Icons.add))
//       ]),
//       body: Container(
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//         color: Color.fromARGB(255, 232, 224, 202),
//         //child: Center(
//         child: const Text(
//           'Hello',
//           textAlign: TextAlign.center,
//           style: TextStyle(
//               fontSize: 100, fontWeight: FontWeight.bold, color: Colors.red),
//         ),
//       ),

//       //),

//       //appBar: AppBar(
//       //title: Text('RoYaL'),
//       // ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:myyy_app/pages/home_page.dart';
import 'package:myyy_app/pages/login_page.dart';
import 'package:myyy_app/utils/routes.dart';
import 'package:myyy_app/widgets/themes.dart';

void main() {
  runApp(const MyApp(
      //home: MyApp(),
      ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //bringVegitables(thaila: true);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
      },
    );
  }
  //bringVegitables({@required bool thaila = true, int rupees = 100}) {}
}
