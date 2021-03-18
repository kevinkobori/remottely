import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:remottely/provider/google_sign_in.dart';
import 'package:provider/provider.dart';
// import 'package:remottely/utils/app_routes.dart';

class LoggedInWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
          body: Container(
        alignment: Alignment.center,
        color: Colors.blueGrey.shade900,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Logged In',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 8),
            CircleAvatar(
              maxRadius: 25,
              backgroundImage: NetworkImage(user.photoURL),
            ),
            SizedBox(height: 8),
            Text(
              'Name: ' + user.displayName,
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 8),
            Text(
              'Email: ' + user.email,
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.logout();
              },
              child: Text('Logout'),
            ),
            IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                // Navigator.of(context).pushReplacementNamed(AppRoutes.CART);
              },
            ),
          ],
        ),
      ),
    );
  }
}