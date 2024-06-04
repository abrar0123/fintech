import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Easypaisa',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: const Color.fromARGB(255, 79, 162, 82),
        actions: [
          Icon(
            Icons.search_sharp,
            size: 33,
          ),
          SizedBox(width: 10),
          Icon(
            Icons.notifications_active_outlined,
            size: 30,
          ),
          SizedBox(width: 10),
        ],
      ),
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.62,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color.fromARGB(255, 6, 10, 249)),
              accountName: Text('Abrar Hussian'),
              accountEmail: Text('abrar.co@gmail.com'),
              currentAccountPicture: FlutterLogo(),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home Page'),
              subtitle: Text('Subtitle Title of an App'),
              onTap: () {
                print('First page called');
                Navigator.pushNamed(context, '/profile');
              },
            ),
            ListTile(
              leading: Icon(Icons.heart_broken_outlined),
              title: Text('Contact Page'),
              subtitle: Text('Subtitle Title of an App'),
              onTap: () {
                Navigator.pushNamed(context, '/profile');

                print('Second page called');
              },
            ),
            ListTile(
              leading: Icon(Icons.account_balance_wallet_outlined),
              title: Text('About Page'),
              subtitle: Text('Subtitle Title of an App'),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          width: 200,
                          height: 250,
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.message),
                                title: Text('MY Cool App'),
                                subtitle: Text('are you sure to open'),
                              ),
                              SizedBox(height: 20),
                              Text('Click to View About'),
                              SizedBox(height: 20),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    FloatingActionButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('Cancel'),
                                    ),
                                    SizedBox(width: 20),
                                    FloatingActionButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                        Navigator.pushNamed(context, '/about');
                                      },
                                      child: Text('Ok'),
                                    ),
                                  ]),
                            ],
                          ),
                        )));
                // Navigator.pushNamed(context, '/about');
              },
            )
          ],
        ),
      ),
    );
  }
}