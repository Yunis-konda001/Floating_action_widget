import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FAB with Bottom Sheet',
      home: FabBottomSheetExample(),
    );
  }
}

class FabBottomSheetExample extends StatelessWidget {
  // Function to open bottom sheet
  void _openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Makes sheet fit content
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Choose an Action', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.message, color: Colors.blue),
                title: Text('Send a Message'),
                onTap: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Message Sent!')),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.photo, color: Colors.green),
                title: Text('Upload Photo'),
                onTap: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Photo Uploaded!')),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.share, color: Colors.purple),
                title: Text('Share Something'),
                onTap: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Shared Successfully!')),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Floating Action Button Example')),
      body: Center(child: Text('Tap the button below to open actions.')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openBottomSheet(context),
        backgroundColor: Colors.blue,
        child: Icon(Icons.menu),
        tooltip: 'Open Actions',
      ),
    );
  }
}
