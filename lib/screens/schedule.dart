import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  _ScheduleScreenState createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  // List of locations
  final List<String> _locations = ['Anamnagar', 'Sankhamul', 'Thapagaun', 'Buddhanagar'];

  // Selected location and date-time
  String? _selectedLocation;
  String? _selectedDateTime;

  Future<void> pickDateTime(BuildContext context) async {
    // Open Date Picker
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null) {
      // Open Time Picker
      final TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );

      if (pickedTime != null) {
        // Combine date and time
        final DateTime fullDateTime = DateTime(
          pickedDate.year,
          pickedDate.month,
          pickedDate.day,
          pickedTime.hour,
          pickedTime.minute,
        );

        // Format the selected date-time
        final formattedDateTime = DateFormat('dd MMM yyyy, hh:mm a').format(fullDateTime);

        // Update the state to reflect the selected date-time
        setState(() {
          _selectedDateTime = formattedDateTime;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align everything to the left
        children: [
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 20), // Add spacing to the left
            child: Text(
              "Select Location",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28, top: 10), // Add spacing for the dropdown
            child: Container(
              width: 350, // Set custom width
              height: 50, // Set custom height
              padding: EdgeInsets.symmetric(horizontal: 10), // Add internal padding
              decoration: BoxDecoration(
                color: Colors.white, // Background color
                border: Border.all(color: Colors.grey, width: 1.5), // Add border color and width
                borderRadius: BorderRadius.circular(8), // Add rounded corners
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: _selectedLocation,
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedLocation = newValue;
                    });
                  },
                  items: _locations.map((String location) {
                    return DropdownMenuItem<String>(
                      value: location,
                      child: Text(location),
                    );
                  }).toList(),
                  hint: Text("Select a location", style: TextStyle(fontSize: 14),), // Placeholder text
                  isExpanded: true, // Ensures dropdown expands to full width
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Text(
              "Select Date",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28, top: 10),
            child: Container(
              width: 350, // Set custom width
              height: 50, // Set custom height
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white, // Background color
                border: Border.all(color: Colors.grey, width: 1.5), // Add border color and width
                borderRadius: BorderRadius.circular(8), // Rounded corners
              ),
              child: GestureDetector(
                onTap: () async {
                  // Open the date-time picker
                  await pickDateTime(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      _selectedDateTime ?? "Select Date-Time", // Show selected date-time or placeholder
                      style: TextStyle(color: Colors.black54, fontSize: 14),
                    ),
                    Icon(Icons.calendar_today, color: Colors.grey),
                  ],
                ),
              ),
            ),
          ),

          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 28, top: 10),
            child: Container(
              width: 350, // Set desired width
              height: 45, // Set desired height
              child: FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: Color(0xFF00BF63), // Button background color
                  foregroundColor: Colors.white, // Button text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Rounded corners
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10), // Internal padding for the button
                ),
                onPressed: () {
                  print("Add New Schedule");
                },
                child: Text(
                  "Add New Schedule",
                  style: TextStyle(
                    fontSize: 16, // Font size for the button text
                    fontWeight: FontWeight.bold, // Make text bold
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.only(left: 28),
            child: Text(
              "15 December",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),

          //Container Box

          SizedBox(height: 8),
          Padding(
            padding: EdgeInsets.only(left: 28, right: 33), // Add space outside the button
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
                        "Sankhamul, Baneshowr",
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
                        "15 Dec 2024, 09:00 AM",
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
          )
        ],
      ),
    );
  }
}
