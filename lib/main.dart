// Import required packages
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

// App entry point
void main() {
  runApp(MyApp());
}

// Main app widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Document Scanner',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: FabBottomSheetExample(),
    );
  }
}

// Main screen with FAB functionality
class FabBottomSheetExample extends StatelessWidget {
  // Function to show bottom sheet menu
  void _openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return SafeArea(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
              // Bottom sheet handle indicator
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              SizedBox(height: 16),
              Text('Scan Document', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              // Scan option with file picker
              ListTile(
                leading: Icon(Icons.document_scanner, color: Colors.blue),
                title: Text('Scan Document'),
                onTap: () async {
                  Navigator.pop(context);
                  // Open file picker for images
                  FilePickerResult? result = await FilePicker.platform.pickFiles(
                    type: FileType.image,
                  );
                  // Show result feedback
                  if (result != null) {
                    String fileName = result.files.single.name;
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Scanned: $fileName')),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Scan cancelled')),
                    );
                  }
                },
              ),
              ],
            ),
          ),
        );
      },
    );
  }

  // Build main screen UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar
      appBar: AppBar(
        title: Text('Document Scanner'),
        backgroundColor: Colors.blue.shade600,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      // Main body with gradient background
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue.shade600, Colors.blue.shade50],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.document_scanner, size: 80, color: Colors.white70),
              SizedBox(height: 20),
              Text('Document Scanner', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white)),
              SizedBox(height: 10),
              Text('Tap the scan button to get started', style: TextStyle(fontSize: 16, color: Colors.white70)),
            ],
          ),
        ),
      ),
      // FloatingActionButton - main interactive element
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openBottomSheet(context),
        backgroundColor: Colors.orange,
        child: Icon(Icons.document_scanner, color: Colors.white),
        elevation: 8,
      ),
    );
  }
}
