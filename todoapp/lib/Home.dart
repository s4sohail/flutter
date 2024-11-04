import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  backgroundColor: Color.fromRGBO(138, 157, 255, 0.72),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome to Notes",
                        style: GoogleFonts.poppins(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Have a great Day",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                const  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage('https://images.pexels.com/photos/53435/tree-oak-landscape-view-53435.jpeg?cs=srgb&dl=pexels-pixabay-53435.jpg&fm=jpg'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "My Priority Task",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
            
                 TaskCard(
                    context,
                    "Mobile App UI Design",
                    "using Figma and other tools",
                    "2 hours ago",
                  ),
                
                  TaskCard(
                    context,
                    "Capture sun Rise Shots",
                    "complete GuruShot Challenge",
                    "4 hours ago",
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "My Tasks",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 12),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Tabbuild("Today's Task", Selected: true),
                  Tabbuild("Weekly Task"),
                  Tabbuild("Monthly Task"),
             IconButton(
  icon: Icon(Icons.add_circle, color: Colors.green, size: 28),
  onPressed: () {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Add Item"),
          content: TextField(
            decoration: InputDecoration(
              hintText: "Enter your task"
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                // add item functionality here
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text("Add"),
            ),
          ],
        );
      },
    );
  },
),
                ],
              ),
              SizedBox(height: 10),
              TaskItem("Complete Assignment #2", "13 September 2022", "To-do", const Color.fromARGB(255, 41, 117, 179)),
              SizedBox(height: 8),
              TaskItem("Submit Fee Challan", "18 September 2022", "Done", const Color.fromARGB(255, 70, 130, 72)),
            ],
          ),
        ),
      ),
    );
  }

 
  Widget TaskCard(BuildContext context, String title, String subtitle, String time) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              time,
              style: GoogleFonts.poppins(fontSize: 12, color: Colors.black45),
            ),
            SizedBox(height: 8),
            Text(
              title,
              style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 4),
            Text(
              subtitle,
              style: GoogleFonts.poppins(fontSize: 12, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }


  Widget TaskItem(String title, String date, String status, Color statusColor) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.calendar_today, size: 16, color: Colors.black54),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 4),
                  Text(
                    date,
                    style: GoogleFonts.poppins(fontSize: 12, color: Colors.black45),
                  ),
                ],
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            decoration: BoxDecoration(
              color: statusColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              status,
              style: GoogleFonts.poppins(fontSize: 12, color: statusColor),
            ),
          ),
        ],
      ),
    );
  }

  Widget Tabbuild(String title, {bool Selected = false}) {
    return Text(
      title,
      style: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: Selected ? FontWeight.bold : FontWeight.normal,
        color: Selected ? Colors.black : Colors.black54,
      ),
    );
  }
}