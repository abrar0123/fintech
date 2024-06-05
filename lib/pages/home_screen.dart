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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              height: 250,
              color: Colors.green,
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'EasyPaisa',
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 20),
                          Text(
                            'MyAwards',
                            style: TextStyle(
                              fontSize: 19,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '********** ',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(width: 20),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Upgrade Account',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Your Balance ',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(width: 20),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'AddCash',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            RightList(),
            MoreCards(),
          ],
        ),
      ),
    );
  }
}

class RightList extends StatelessWidget {
  const RightList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/sendMoney',
                  arguments: {'screen': 'SendMoney'});
            },
            child: Container(
              padding: EdgeInsets.all(10),
              child: Card(
                color: Colors.white,
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Icon(
                        Icons.send_to_mobile,
                        size: 40,
                      ),
                      SizedBox(height: 10),
                      Text('Send Money'),
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/sendMoney',
                  arguments: {'screen': 'Bills Payment'});
            },
            child: Container(
              padding: EdgeInsets.all(10),
              child: Card(
                color: Colors.white,
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Icon(
                        Icons.mobile_screen_share_sharp,
                        size: 40,
                      ),
                      SizedBox(height: 10),
                      Text('Bill Payment'),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Card(
              color: Colors.white,
              elevation: 5,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Icon(
                      Icons.blinds_closed_sharp,
                      size: 40,
                    ),
                    SizedBox(height: 10),
                    Text('Packages'),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Card(
              color: Colors.white,
              elevation: 5,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Icon(
                      Icons.mobile_screen_share_sharp,
                      size: 40,
                    ),
                    SizedBox(height: 10),
                    Text('Attach Bills'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MoreCards extends StatelessWidget {
  const MoreCards({super.key});

  @override
  Widget build(BuildContext context) {
    return (Container(
      padding: EdgeInsets.all(20),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'More with easypaisa',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(height: 10),
          Card(
            elevation: 5,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/sendMoney',
                            arguments: {'screen': 'Easy Load'});
                      },
                      child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(children: [
                            Icon(Icons.mobile_friendly,
                                color: Colors.green, size: 40),
                            SizedBox(height: 15),
                            Text(
                              'Easyload',
                              style: TextStyle(fontSize: 14),
                            ),
                          ])),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/sendMoney',
                            arguments: {'screen': 'Easy Loan'});
                      },
                      child: Container(
                          padding: EdgeInsets.all(20),
                          child: Column(children: [
                            Icon(Icons.mobile_screen_share,
                                color: Colors.green, size: 40),
                            SizedBox(height: 15),
                            Text(
                              'EasyLoan',
                              style: TextStyle(fontSize: 14),
                            ),
                          ])),
                    ),
                    Container(
                        padding: EdgeInsets.all(20),
                        child: Column(children: [
                          Icon(Icons.person_2_outlined,
                              color: Colors.green, size: 50),
                          SizedBox(height: 15),
                          Text(
                            'Invite& Earn',
                            style: TextStyle(fontSize: 13),
                          ),
                        ])),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/sendMoney',
                            arguments: {'screen': 'Insurance'});
                      },
                      child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(children: [
                            Icon(Icons.workspaces_filled,
                                color: Colors.green, size: 40),
                            SizedBox(height: 15),
                            Text(
                              'Insurance',
                              style: TextStyle(fontSize: 14),
                            ),
                          ])),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/sendMoney',
                            arguments: {'screen': 'Donations'});
                      },
                      child: Container(
                          padding: EdgeInsets.all(20),
                          child: Column(children: [
                            Icon(Icons.domain_verification,
                                color: Colors.green, size: 40),
                            SizedBox(height: 15),
                            Text(
                              'Donations',
                              style: TextStyle(fontSize: 14),
                            ),
                          ])),
                    ),
                    Container(
                        padding: EdgeInsets.all(20),
                        child: Column(children: [
                          Icon(Icons.person_2_outlined,
                              color: Colors.green, size: 50),
                          SizedBox(height: 15),
                          Text(
                            'Invite& Earn',
                            style: TextStyle(fontSize: 13),
                          ),
                        ])),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        padding: EdgeInsets.all(20),
                        child: Column(children: [
                          Icon(Icons.mobile_friendly,
                              color: Colors.green, size: 40),
                          SizedBox(height: 15),
                          Text(
                            'Savings',
                            style: TextStyle(fontSize: 14),
                          ),
                        ])),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/sendMoney',
                            arguments: {'screen': 'Mini Apps'});
                      },
                      child: Container(
                          padding: EdgeInsets.all(20),
                          child: Column(children: [
                            Icon(Icons.mobile_screen_share,
                                color: Colors.green, size: 40),
                            SizedBox(height: 15),
                            Text(
                              'Mini Apps',
                              style: TextStyle(fontSize: 14),
                            ),
                          ])),
                    ),
                    Container(
                        padding: EdgeInsets.all(20),
                        child: Column(children: [
                          Icon(Icons.threed_rotation,
                              color: Colors.green, size: 50),
                          SizedBox(height: 15),
                          Text(
                            'See All',
                            style: TextStyle(fontSize: 15),
                          ),
                        ])),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
