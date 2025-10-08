# Floating Action Button (FAB) Demo App  
**By:** Kumi Yunis Konda  
**Course:** Flutter Development  
**Widget Presented:** FloatingActionButton  
**Presentation Week:** Week 6

---

## 📘 Project Overview

This Flutter project demonstrates how to use a **Floating Action Button (FAB)** in a real-world scenario.  
Instead of performing a single action, this FAB opens a **bottom sheet** that presents multiple user options — just like in modern apps such as **WhatsApp**, **Google Keep**, or **Twitter**, where the main button reveals several quick actions.

The demo was built for an in-class presentation to showcase:
1. How the Floating Action Button works in Flutter.
2. How it can interact with other widgets like **BottomSheet** and **SnackBar**.
3. The meaning and effects of three key FAB attributes.

---

## 🎯 Learning Objective

The goal of this demo is to show that the **Floating Action Button** can do much more than just “add items.”  
It can control real user interactions by triggering menus, forms, or navigation.  
In this example, pressing the FAB opens a **bottom sheet** that displays three real-world options:
- Send a Message  
- Upload a Photo  
- Share Something  

Each option responds with a short **SnackBar** message to show user feedback.

---

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


## Screenshot of the Final UI

| Floating Action Button | Bottom Sheet Open |
|-------------------------|------------------|
| ![FAB Screenshot](screenshots/fab_home.png) | ![Bottom Sheet Screenshot](screenshots/fab_bottom_sheet.png) |
