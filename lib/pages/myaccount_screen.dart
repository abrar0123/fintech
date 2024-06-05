import 'package:flutter/material.dart';

class MyaccountScreen extends StatefulWidget {
  const MyaccountScreen({super.key});

  @override
  State<MyaccountScreen> createState() => _MyaccountScreenState();
}

class _MyaccountScreenState extends State<MyaccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Account'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // User Profile Section
            Container(
              padding: EdgeInsets.all(16),
              child:Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        NetworkImage('https://via.placeholder.com/150'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'John Doe',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'john.doe@example.com',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Divider(),
            // Account Settings Section
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Personal Information'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to Personal Information Screen
              },
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text('Change Password'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to Change Password Screen
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to Notifications Screen
              },
            ),
            ListTile(
              leading: Icon(Icons.payment),
              title: Text('Payment Methods'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to Payment Methods Screen
              },
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text('Order History'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to Order History Screen
              },
            ),
            Divider(),
            // Logout Section
            ListTile(
              leading: Icon(Icons.logout, color: Colors.red),
              title: Text('Logout', style: TextStyle(color: Colors.red)),
              onTap: () {
                // Handle Logout
              },
            ),
          ],
        ),
      ),
    );
  }
}
