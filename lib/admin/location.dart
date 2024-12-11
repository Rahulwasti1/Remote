import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  // Placeholder controllers for form fields
  late TextEditingController locationController = TextEditingController();
  late TextEditingController addressController = TextEditingController();
  late TextEditingController longitudeController = TextEditingController();
  late TextEditingController latitudeController = TextEditingController();

  @override
  void dispose(){
    locationController.dispose();
    addressController.dispose();
    longitudeController.dispose();
    latitudeController.dispose();
    super.dispose();
  }

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
              controller: locationController,
              decoration: InputDecoration(
                hintText: 'Enter Location Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: addressController,
              decoration: InputDecoration(
                hintText: 'Enter Location Address',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: longitudeController,
              decoration: InputDecoration(
                hintText: 'Longitude',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
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
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
          ],
        ),
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(horizontal: 35),
            ),
            child: Text("Cancel", style: TextStyle(fontSize: 16)),
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: EdgeInsets.symmetric(horizontal: 35),
            ),
            child: Text("Add", style: TextStyle(fontSize: 16)),
            onPressed: () async {
              if (locationController.text.isEmpty ||
                  addressController.text.isEmpty ||
                  longitudeController.text.isEmpty ||
                  latitudeController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Please fill all fields')),
                );
              } else {
                try {
                  CollectionReference collRef =
                  FirebaseFirestore.instance.collection('location');
                  await collRef.add({
                    'locationname': locationController.text,
                    'locationaddress': addressController.text,
                    'longitude': longitudeController.text,
                    'latitude': latitudeController.text,
                  });

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Driver added successfully!')),
                  );

                  setState(() {
                    locationController.clear();
                    addressController.clear();
                    longitudeController.clear();
                    latitudeController.clear();
                  });

                  Navigator.of(context).pop();
                } catch (e) {
                  print("Error adding driver: $e");
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Failed to add driver: $e')),
                  );
                }
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
          ],
        ),
      ),
    );
  }
}
