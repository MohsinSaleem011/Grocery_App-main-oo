import 'package:flutter/material.dart';
import 'package:grocery/Splash%20Module/intro.dart';
import 'package:permission_handler/permission_handler.dart';
// import 'package:status_saver/utils/splash_screen.dart';


class PermissionHandler extends StatefulWidget {
  const PermissionHandler({super.key});

  @override
  State<PermissionHandler> createState() => _PermissionHandlerState();
}

class _PermissionHandlerState extends State<PermissionHandler> {
  Future<Widget> permissionCheck() async {
    var permissionStatus = await Permission.storage.status;


    if (!permissionStatus.isGranted){
      await Permission.storage.request();

    }
     permissionStatus = await Permission.storage.status;
     if(permissionStatus.isGranted) return introScreen();
     else {
          return AlertDialog(
              title: Text('Permission Required'),  // To display the title it is optional
              content: Text('Cannot proceed without permission'),   // Message which will be pop up on the screen
              // Action widget which will provide the user to acknowledge the choice
                actions: [
                TextButton(           // FlatButton widget is used to make a text to work like a button
                  child: Text('Open App Settings'),
                  onPressed: () => openAppSettings(),   
                       // function used to perform after pressing the button
                ),
                
              ],
            );
            
     }
     
  }
  
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
          builder: (ctx, snapshot) {
            
            // Checking if future is resolved or not
            if (snapshot.connectionState == ConnectionState.done) {
              // If we got an error
               
              if (snapshot.hasError) {
                return Center(
                  child: Text(
                    '${snapshot.error} occured',
                    style: TextStyle(fontSize: 18),
                  ),
                );
  
                // if we got our data
              } else  {
                return snapshot.data as Widget;
              }
            }
  
            // Displaying LoadingSpinner to indicate waiting state
            return Center(
              child: CircularProgressIndicator(),
            );
          },
  
          // Future that needs to be resolved
          // inorder to display something on the Canvas
          future: permissionCheck(),
        );
  }
}