import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          IconButton(
            icon: const Icon(
              Icons.shopping_bag_outlined,
            ),
            onPressed: () {
              // Handle add to cart action
            },
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
              const SizedBox(height: 16.0),
              Text(
                'Notification Setting',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              const SizedBox(height: 32),
              Text(
                'Customizable Notification Categories:',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: const Color.fromARGB(255, 27, 58, 87),
                ),
              ),
              const SizedBox(height: 20),
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
              const SizedBox(height: 20),
              Text(
                'Notification Frequency Options',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: const Color.fromARGB(255, 27, 58, 87),
                ),
              ),
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
              Text(
                'Multiple Notification Channels:',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: const Color.fromARGB(255, 27, 58, 87),
                ),
              ),
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
              Text(
                'Sound and Vibration Settings:',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: const Color.fromARGB(255, 27, 58, 87),
                ),
              ),
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
              Text(
                'Do Not Disturb (DND) Mode:',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: const Color.fromARGB(255, 27, 58, 87),
                ),
              ),
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
    title: Text(
      title,
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        color: const Color.fromARGB(255, 117, 117, 117),
      ),
    ),
    trailing: Transform.scale(
      scale: 0.8, // Adjust the scale to change the size
      child: Switch(
        value: value,
        onChanged: onChanged,
        activeColor: const Color(0xFF4CAF50), // Green color for active thumb
        inactiveThumbColor: const Color.fromARGB(
            255, 255, 254, 254), // Grey color for inactive thumb
        inactiveTrackColor: const Color.fromARGB(
            255, 244, 241, 241), // Grey color for inactive track
        activeTrackColor: const Color.fromARGB(255, 223, 217, 217),

        // Light green color for active track
      ),
    ),
  );
}
