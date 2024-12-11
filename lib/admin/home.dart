import 'package:flutter/material.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    // List of locations with unique names for each button
    List<Map<String, String>> schedules = [
      {
        "location": "Sankhamul, Baneshwor",
        "dateTime": "15 Dec 2024, 9:00 AM",
      },
      {
        "location": "Dillibazar, Putalisadak",
        "dateTime": "16 Dec 2024, 10:30 AM",
      },
      {
        "location": "Mitra Park, Chabahil",
        "dateTime": "17 Dec 2024, 11:15 AM",
      },
      {
        "location": "Boudhanath, Chabahil",
        "dateTime": "18 Dec 2024, 1:00 PM",
      },
      {
        "location": "Mulpani, Kadaghari",
        "dateTime": "19 Dec 2024, 3:00 PM",
      },
    ];


    return SingleChildScrollView(  // Wrap the whole Column with SingleChildScrollView
      child: Column(
        children: [
          SizedBox(height: 10,), // Space at the top

          // First row with two buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center, // Center the buttons horizontally
            children: [
              // First button in the top row
              ElevatedButton(
                onPressed: () {
                  print('Button 1 Pressed');
                },
                style: FilledButton.styleFrom(
                  backgroundColor: Color(0xFFECFFF3), // Background color of the button
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fixedSize: Size(190, 130), // Button size
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 5,),
                    Image.asset(
                      'assets/icons/calendar1.png', // Path to your image
                      height: 35, // Size of the image
                      width: 40, // Size of the image
                    ),
                    SizedBox(height: 10,), // Space Between Image and Text
                    Text("Schedule Collection",
                      style: TextStyle(color: Color(0xFF567159)),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 7,), // Space between the two buttons

              // Second button in the top row
              ElevatedButton(
                onPressed: () {
                  print('Button 2 Pressed');
                },
                style: FilledButton.styleFrom(
                  backgroundColor: Color(0xFFECFFF3), // Background color of the button
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fixedSize: Size(190, 130), // Button size
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/delivery-truckk.png', // Path to your image
                      height: 50, // Size of the image
                      width: 60, // Size of the image
                    ),
                    SizedBox(height: 0,), // Space Between Image and Text
                    Text("Assign Drivers",
                      style: TextStyle(color: Color(0xFF567159)),
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 8,), // Space between the top and bottom rows

          // Second row with two buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center, // Center the buttons horizontally
            children: [
              // Third button in the bottom row
              ElevatedButton(
                onPressed: () {
                  print('Button 3 Pressed');
                },
                style: FilledButton.styleFrom(
                  backgroundColor: Color(0xFFECFFF3), // Background color of the button
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fixedSize: Size(190, 130), // Button size
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/group.png', // Path to your image
                      height: 50, // Size of the image
                      width: 40, // Size of the image
                    ),
                    SizedBox(height: 0,), // Space Between Image and Text
                    Text("Manage Drivers",
                      style: TextStyle(color: Color(0xFF567159)),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 7,), // Space between the two buttons

              // Fourth button in the bottom row
              ElevatedButton(
                onPressed: () {
                  print('Button 4 Pressed');
                },
                style: FilledButton.styleFrom(
                  backgroundColor: Color(0xFFECFFF3), // Background color of the button
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fixedSize: Size(190, 130), // Button size
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/pin.png', // Path to your image
                      height: 38, // Size of the image
                      width: 60, // Size of the image
                    ),
                    SizedBox(height: 10,), // Space Between Image and Text
                    Text("Manage Locations",
                      style: TextStyle(color: Color(0xFF567159)),
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 12,), // Space at the bottom

          // Upcoming Schedule Text
          Row(
            children: [
              SizedBox(width: 13),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "Upcoming Schedule",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),

          SizedBox(height: 12,),

          // Repeat OutlinedButton multiple times
          ...List.generate(schedules.length, (index) {  // This will repeat the OutlinedButton 5 times
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2), // Add space outside the button
              child: OutlinedButton(
                onPressed: () {
                  print("object");
                },
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20), // Button's internal padding
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: BorderSide(color: Colors.black26), // Optional: border color
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                  children: [

                    // First Row: Location
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/pin.png',
                          height: 20,
                          width: 20,
                        ),
                        SizedBox(width: 10), // Space between image and text
                        Text(
                          schedules[index]["location"]!,
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                    SizedBox(height: 8), // Space between the two rows

                    // Second Row: Date and Time
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/calendar_.png',
                          height: 20,
                          width: 20,
                        ),
                        SizedBox(width: 10), // Space between image and text
                        Text(
                          schedules[index]["dateTime"]!,
                          style: TextStyle(
                            color: Color(0xFF969191),
                          ),
                        ),
                      ],
                    ),

                    // Right Arrow Image in the middle of the box
                    Transform.translate(
                      offset: Offset(0, -25),  // Move the widget 5 pixels up
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 1),  // Right padding only
                          child: Image.asset(
                            'assets/icons/right-arrow.png',
                            height: 8,
                            width: 30,
                          ),
                        ),
                      ),
                    )

                  ],
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
