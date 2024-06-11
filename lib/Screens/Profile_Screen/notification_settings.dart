import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Global/constants.dart';

class NotificationSettings extends StatefulWidget {
  const NotificationSettings({super.key});

  @override
  State<NotificationSettings> createState() => _NotificationSettingsState();
}

class _NotificationSettingsState extends State<NotificationSettings> {
  bool generalNotifications = true;
  bool personalNotifications = false;
  bool transactionNotifications = true;
  bool serviceNotifications = false;
  bool realTime = true;
  bool dailySummary = false;
  bool weeklySummary = true;
  bool pushNotifications = false;
  bool emailNotifications = true;
  bool smsNotifications = false;
  bool sound = true;
  bool vibration = true;
  bool scheduledDnd = false;
  bool manualDnd = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop(); // Handle back action
          },
        ),
        title: Padding(
          padding:
              const EdgeInsets.only(left: 0), // Adjust the padding if needed
          child: CircleAvatar(
            child: Image.asset('assets/logoo.png'),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {
              // Handle favorite action
            },
          ),
          Stack(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                  size: 30,
                ),
                onPressed: () {
                  // Handle add to cart action
                },
              ),
              Positioned(
                right: 5,
                top: 5,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.green, // Green background for the counter
                    borderRadius: BorderRadius.circular(30), // Circular shape
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 20,
                    minHeight: 20,
                  ),
                  child: Center(
                    child: Text('2', // Number to be displayed in the counter
                        style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              child: Image.asset('assets/Menu.png'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 246, 248, 250),
                    hintText: 'Search',
                    hintStyle: const TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.normal),
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(27.0),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 233, 237, 243)
                            .withOpacity(0.5),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(27.0),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 238, 237, 237)
                            .withOpacity(0.5),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(27.0),
                      borderSide: BorderSide(
                        color: Colors.blue.withOpacity(0.5),
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 15.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.018),
              Text('Notification Setting',
                  style: TEXT_STYLE.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black)),
              SizedBox(height: MediaQuery.of(context).size.height * 0.025),
              Text('Customizable Notification Categories:',
                  style: TEXT_STYLE.copyWith(
                      fontSize: 18, fontWeight: FontWeight.w600, color: BOLD)),
              SizedBox(height: MediaQuery.of(context).size.height * 0.018),
              buildNotificationSwitch(
                'General Notifications',
                generalNotifications,
                (value) {
                  setState(() {
                    generalNotifications = value;
                  });
                },
              ),
              buildNotificationSwitch(
                'Personal Notifications',
                personalNotifications,
                (value) {
                  setState(() {
                    personalNotifications = value;
                  });
                },
              ),
              buildNotificationSwitch(
                'Transaction Notifications',
                transactionNotifications,
                (value) {
                  setState(() {
                    transactionNotifications = value;
                  });
                },
              ),
              buildNotificationSwitch(
                'Service Notifications',
                serviceNotifications,
                (value) {
                  setState(() {
                    serviceNotifications = value;
                  });
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.020),
              Text('Notification Frequency Options',
                  style: TEXT_STYLE.copyWith(
                      fontSize: 18, fontWeight: FontWeight.w600, color: BOLD)),
              buildNotificationSwitch('Real-Time', realTime, (value) {
                setState(() {
                  realTime = value;
                });
              }),
              buildNotificationSwitch(
                'Daily Summary',
                dailySummary,
                (value) {
                  setState(() {
                    dailySummary = value;
                  });
                },
              ),
              buildNotificationSwitch('Weekly Summary', weeklySummary, (value) {
                setState(() {
                  weeklySummary = value;
                });
              }),
              const SizedBox(height: 20),
              Text('Multiple Notification Channels:',
                  style: TEXT_STYLE.copyWith(
                      fontSize: 20, fontWeight: FontWeight.w600, color: BOLD)),
              const SizedBox(height: 20),
              buildNotificationSwitch(
                'Push Notifications',
                pushNotifications,
                (value) {
                  setState(() {
                    pushNotifications = value;
                  });
                },
              ),
              buildNotificationSwitch(
                'Email Notifications',
                emailNotifications,
                (value) {
                  setState(() {
                    emailNotifications = value;
                  });
                },
              ),
              buildNotificationSwitch(
                'SMS Notifications',
                smsNotifications,
                (value) {
                  setState(() {
                    smsNotifications = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              Text('Sound and Vibration Settings:',
                  style: TEXT_STYLE.copyWith(
                      fontSize: 20, fontWeight: FontWeight.w600, color: BOLD)),
              const SizedBox(height: 20),
              buildNotificationSwitch(
                'Sound',
                sound,
                (value) {
                  setState(() {
                    sound = value;
                  });
                },
              ),
              buildNotificationSwitch(
                'Vibration',
                vibration,
                (value) {
                  setState(() {
                    vibration = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              Text('Do Not Disturb (DND) Mode:',
                  style: TEXT_STYLE.copyWith(
                      fontSize: 20, fontWeight: FontWeight.w600, color: BOLD)),
              const SizedBox(height: 20),
              buildNotificationSwitch(
                'Scheduled DND',
                scheduledDnd,
                (value) {
                  setState(() {
                    scheduledDnd = value;
                  });
                },
              ),
              buildNotificationSwitch(
                'Manual DND',
                manualDnd,
                (value) {
                  setState(() {
                    manualDnd = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildNotificationSwitch(
  String title,
  bool value,
  Function(bool) onChanged,
) {
  return ListTile(
    contentPadding: EdgeInsets.zero,
    title: Text(title,
        style: TEXT_STYLE.copyWith(
            fontSize: SIZE_SM, fontWeight: FontWeight.w500, color: LIT_BOLD)),
    trailing: Transform.scale(
      scale: 0.8, // Adjust the scale to change the size
      child: Switch(
        value: value,
        onChanged: onChanged,
        activeColor: const Color(0xFF2AA952), // Green color for active thumb
        inactiveThumbColor: Color(0xFFE6E6E6),
        // Grey color for inactive thumb
        inactiveTrackColor: const Color.fromARGB(
            255, 244, 241, 241), // Grey color for inactive track
        activeTrackColor: const Color.fromARGB(255, 223, 217, 217),

        // Light green color for active track
      ),
    ),
  );
}
