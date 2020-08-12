import 'package:flutter/material.dart';
import 'package:social_media_app/data.dart';
import 'package:social_media_app/screens/home_screen.dart';
import 'package:social_media_app/screens/login_screen.dart';
import 'package:social_media_app/screens/profile_screen.dart';

class CustomDrawer extends StatelessWidget {
  buildTileOption(Icon icon, String title, Function onTap) {
    return ListTile(
      leading: icon,
      onTap: onTap,
      title: Text(
        title,
        style: TextStyle(fontSize: 20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                currentUser.backgroundImageUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                left: 100,
                top: 40,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black38,
                                offset: Offset(0, 2),
                                blurRadius: 6,
                                spreadRadius: 2),
                          ],
                          border: Border.all(
                              width: 3, color: Theme.of(context).primaryColor)),
                      child: ClipOval(
                        child: Image.asset(
                          currentUser.profileImageUrl,
                          width: 90,
                          height: 90,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      currentUser.name,
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
          buildTileOption(
            Icon(Icons.home),
            'Home',
            () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => HomePage()),
            ),
          ),
          buildTileOption(Icon(Icons.chat), 'Chat', () {}),
          buildTileOption(
            Icon(Icons.account_circle),
            'Profile',
            () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => ProfileScreen(
                        user: currentUser,
                      )),
            ),
          ),
          buildTileOption(Icon(Icons.location_on), 'Location', () {}),
          buildTileOption(Icon(Icons.settings), 'Settings', () {}),
          buildTileOption(
            Icon(Icons.directions_run),
            'Log Out',
            () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => LoginScreen()),
            ),
          ),
        ],
      ),
    );
  }
}
