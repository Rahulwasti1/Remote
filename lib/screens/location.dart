import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  late TextEditingController nameController;
  late TextEditingController addressController;
  late TextEditingController longitudeController;
  late TextEditingController latitudeController;

  String locationName = '';
  String address = '';
  String longitude = '';
  String latitude = '';

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    addressController = TextEditingController();
    longitudeController = TextEditingController();
    latitudeController = TextEditingController();
  }

  @override
  void dispose() {
    nameController.dispose();
    addressController.dispose();
    longitudeController.dispose();
    latitudeController.dispose();
    super.dispose();
  }

  // Method to show the dialog and return the input values
  Future<void> openDialog() async {
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Align(
          alignment: Alignment.center,
          child: Text(
            "Add New Location",
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          ),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: 'Enter Location Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0), // Set the radius here
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: addressController,
              decoration: InputDecoration(
                hintText: 'Enter Location Address',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0), // Set the radius here
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: longitudeController,
              decoration: InputDecoration(
                hintText: 'Longitude',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0), // Set the radius here
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            TextField(
              controller: latitudeController,
              decoration: InputDecoration(
                hintText: 'Latitude',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0), // Set the radius here
                ),
              ),
              keyboardType: TextInputType.number,
            ),
          ],
        ),


        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red, // Set background to grey for cancel button
              foregroundColor: Colors.white, // Text color white
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(horizontal: 35),
            ),
            child: Text("Cancel", style: TextStyle(fontSize: 16)),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green, // Set background color to green for submit
              foregroundColor: Colors.white, // Text color white
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0), // Set the radius here
              ),
              padding: EdgeInsets.symmetric(horizontal: 35),
            ),
            child: Text("Submit", style: TextStyle(fontSize: 16)),
            onPressed: () {
              if (nameController.text.isEmpty ||
                  addressController.text.isEmpty ||
                  longitudeController.text.isEmpty ||
                  latitudeController.text.isEmpty) {
                // Show error if any field is empty
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Please fill all fields')),
                );
              } else {
                setState(() {
                  locationName = nameController.text;
                  address = addressController.text;
                  longitude = longitudeController.text;
                  latitude = latitudeController.text;
                });
                Navigator.of(context).pop();
              }
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: OutlinedButton(
                onPressed: () async {
                  await openDialog(); // Open the dialog to get input
                },
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  fixedSize: Size(340, 40),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/more.png",
                      height: 25,
                      width: 40,
                    ),
                    SizedBox(width: 3),
                    Text(
                      "Add Location",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            // Display the entered location details after submission
            if (locationName.isNotEmpty) ...[
              Text("Location Name: $locationName", style: TextStyle(fontSize: 18)),
              Text("Address: $address", style: TextStyle(fontSize: 18)),
              Text("Longitude: $longitude", style: TextStyle(fontSize: 18)),
              Text("Latitude: $latitude", style: TextStyle(fontSize: 18)),
            ]
          ],
        ),
      ),
    );
  }
}
