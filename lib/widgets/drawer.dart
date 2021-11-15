import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://instagram.fdel27-1.fna.fbcdn.net/v/t51.2885-19/s320x320/244703892_1041919999899621_6200735479519599566_n.jpg?_nc_ht=instagram.fdel27-1.fna.fbcdn.net&_nc_cat=109&_nc_ohc=n7h3nP1dHKwAX_ZfzIX&edm=ABfd0MgBAAAA&ccb=7-4&oh=e805d3e94af242193778c241f8f05f60&oe=6198E2B3&_nc_sid=7bff83";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountName: Text("Bhavik Mangla"),
                  accountEmail: Text("bhavikmangla1234@gmail.com"),
                  //currentAccountPicture: Image.network(imageUrl),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                )),
            const ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email me",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
