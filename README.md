# Document Scanner App

**Created by:** Kumi Yunis Konda  
**Course:** Mobile development  
**Widget Focus:** FloatingActionButton with File Operations  
**Presentation:** Week 6 - Wednesday  

---

## What This App Does

This Flutter app demonstrates a **Document Scanner** interface using a FloatingActionButton to trigger file selection functionality.

The app provides a clean, professional interface for document scanning with file picker integration.

### Key Features
- **Document Scanner Interface**: Clean gradient UI with scanner theme
- **File Picker Integration**: Select images for document scanning
- **Bottom Sheet Menu**: Elegant popup for scan options
- **User Feedback**: Instant confirmation with snackbar messages
- **Professional Design**: Modern Material Design 3 styling

### Why I Built This
I created this app to demonstrate how FloatingActionButton can be integrated with real file operations, showing practical mobile development patterns for document management apps.

## Learning Objective
The goal is to show how **FloatingActionButton** can trigger complex workflows like file operations.  
This example demonstrates:
- File picker integration for image selection
- Bottom sheet UI patterns
- User feedback mechanisms
- Real-world document scanning app structure

## Widget Description
The **FloatingActionButton** triggers the document scanning workflow through a bottom sheet interface.  
It integrates with the **file_picker** package for image selection.

Key implementation:
```dart
FloatingActionButton(
  onPressed: () => _openBottomSheet(context),
  backgroundColor: Colors.orange,
  child: Icon(Icons.document_scanner),
)
```

## How to Run This App

1. **Clone this repository**
   ```bash
   git clone https://github.com/Yunis-konda001/Floating_action_widget.git
   cd Floating_action_widget
   ```

2. **Enable Developer Mode** (Windows)
   ```bash
   start ms-settings:developers
   ```
   Toggle "Developer Mode" to ON for symlink support

3. **Get Flutter dependencies**
   ```bash
   flutter pub get
   ```

4. **Run the app**
   ```bash
   flutter run
   ```

## What You Will Learn

- FloatingActionButton with file operations
- File picker integration for image selection
- Bottom sheet UI patterns
- User feedback with SnackBars
- Material Design 3 theming
- Gradient backgrounds and modern UI

## Technical Details

**Dependencies:**
- `file_picker: ^10.3.3` - File selection functionality
- `flutter_lints: ^6.0.0` - Code quality linting

**Main Widgets Used:**
- `FloatingActionButton` - Document scan trigger
- `ModalBottomSheet` - Scan options menu
- `FilePicker` - Image file selection
- `SnackBar` - User feedback
- `Container` with `LinearGradient` - Modern UI styling

## Contributing

Feel free to fork this project and experiment with different FAB configurations! This is a learning project, so any improvements or creative modifications are welcome.

## Screenshots

Document Scanner app interface with FloatingActionButton integration:

<img width="617" height="573" alt="fab_home" src="https://github.com/user-attachments/assets/47e2dc57-5298-46e8-b943-500d26e5257a" />

<img width="621" height="571" alt="fab_bottom_sheet" src="https://github.com/user-attachments/assets/5a84867f-d5f0-49ad-a5cb-8c386a38ede7" />