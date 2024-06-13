import 'package:e_com_app/Global/constants.dart';
import 'package:e_com_app/Screens/login_screen.dart';
import 'package:flutter/material.dart';

class Logout extends StatelessWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color.fromARGB(255, 245, 244, 242),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      content: SizedBox(
        height: 230,
        width: 372,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Adjust the image size using height and width
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/animations/Vector.png',
                height: 75, // Adjust the height as needed
                width: 75, // Adjust the width as needed
                fit: BoxFit
                    .contain, // Ensure the image fits within the given size
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.008),
            // Main title
            Text(
              'Sure you want to Logout?',
              style: TEXT_STYLE.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: const Color.fromARGB(255, 84, 89, 94),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.008),
            // Subtitle
            Text(
              'Are you sure you want to sign out?',
              style: TEXT_STYLE.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: const Color.fromARGB(153, 84, 89, 94),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.024),
            // Action buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    // backgroundColor:
                    //     const Color.fromARGB(0, 255, 255, 255), // Transparent background
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: const BorderSide(
                        color: Color(0xFF1B3A57), // Border color
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop(); // Dismiss the dialog
                  },
                  child: Text(
                    'No, Cancel',
                    style: TEXT_STYLE.copyWith(
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF1B3A57),
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.height * 0.016),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        const Color(0xFF1B3A57), // Background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    // Add logout functionality here
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const LoginScreen())); // Dismiss the dialog
                  },
                  child: Text(
                    'Yes, Confirm',
                    style: TEXT_STYLE.copyWith(
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(255, 250, 251, 251),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
