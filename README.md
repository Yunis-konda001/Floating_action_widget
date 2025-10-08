# Floating Action Button (FAB) Demo App  

**Created by:** Kumi Yunis Konda  
**Course:** Mobile development  
**Widget Focus:** FloatingActionButton  
**Presentation:** Week 6 - Wednesday  

---

## What This App Does

This Flutter app shows you how to create a **smart Floating Action Button** that does more than just one thing! 

Instead of the typical "add item" button, this FAB opens up a menu with multiple options - just like you see in popular apps like WhatsApp, Google Keep, or Twitter.

### Key Features
- **Interactive FAB**: Tap the floating button to see magic happen
- **Bottom Sheet Menu**: Choose from multiple actions in a clean popup
- **User Feedback**: Get instant confirmation with snackbar messages
- **Real-world Design**: Looks and feels like professional apps

### Why I Built This
I created this demo to present it in a class session in order to show that Flutter's FloatingActionButton can be much more powerful than most tutorials suggest. It's not just about adding items - it's about creating smooth user experiences


## Learning Objective
The goal of this demo is to show that the **Floating Action Button** can do much more than just “add items.”  
It can control real user interactions by triggering menus, forms, or navigation.  
In this example, pressing the FAB opens a **bottom sheet** that displays three real-world options:
- Send a Message  
- Upload a Photo  
- Share Something  

Each option responds with a short **SnackBar** message to show user feedback.


## Widget Description
The **FloatingActionButton** is a circular button that appears above other content in an app.  
It is used to perform the app’s **primary or most common action**.  

In Flutter, it’s built using:
```dart
FloatingActionButton(
  onPressed: ...,   // defines what happens when pressed
  child: ...,       // icon or text inside the button
  backgroundColor: ... // color of the button
)


## Screenshots

| Floating Action Button | Bottom Sheet Menu |
|-------------------------|------------------|
| [!FAB Screenshot](lib/screenshoots/fab_home.png) | [!Bottom Sheet Screenshot](lib/screenshoots/fab_bottom_sheet.png) |

## How to Run This App

1. **Clone this repository**
   ```bash
   git clone https://github.com/Yunis-konda001/Floating_action_widget.git
   cd fab_demo
   ```

2. **Get Flutter dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

## What You will Learn

- How to create interactive FloatingActionButtons
- Working with BottomSheet widgets for menus
- Providing user feedback with SnackBars
- Combining multiple Flutter widgets for better UX
- Real-world app design patterns

## Technical Details

**Main Widgets Used:**
- `FloatingActionButton` - The main interactive button
- `BottomSheet` - For displaying the action menu
- `SnackBar` - For user feedback messages
- `Scaffold` - App structure and layout

## Contributing

Feel free to fork this project and experiment with different FAB configurations! This is a learning project, so any improvements or creative modifications are welcome.

---

*Created for Flutter Development Class - Demonstrating the power of FloatingActionButton widget* 🎓