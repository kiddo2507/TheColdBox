import 'package:flutter/material.dart';
import 'package:thecold_box/screens/home_screen.dart';
import 'package:thecold_box/screens/settings.dart';
import 'package:thecold_box/screens/shoppingcart.dart';
import 'package:thecold_box/screens/thecold_box.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: SizedBox(
                  height: 100,
                  child: Image.asset(
                    "assets/menu.png",
                    fit: BoxFit.contain,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                'Menu',
                style: TextStyle(fontSize: 50),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(250, 60),
                        elevation: 2,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TheColdBox()));
                      },
                      child: Text(
                        'The Cold Box',
                        style: TextStyle(fontSize: 17),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(250, 60),
                        elevation: 2,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ShoppingCart()));
                      },
                      child: Text(
                        'Shopping List',
                        style: TextStyle(fontSize: 17),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(250, 60),
                        elevation: 2,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SettingsPage()));
                      },
                      child: Text(
                        'Settings',
                        style: TextStyle(fontSize: 17),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(250, 60),
                        elevation: 2,
                      ),
                      onPressed: () {},
                      child: Text(
                        'TCB Website',
                        style: TextStyle(fontSize: 17),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
