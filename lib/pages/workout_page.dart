import 'package:exam/widgets/all_type.dart';

import 'package:flutter/material.dart';

class WorkOut extends StatefulWidget {
  static const String routeName = 'WorkOut';
  const WorkOut({super.key});

  @override
  State<WorkOut> createState() => _WorkOutState();
}

class _WorkOutState extends State<WorkOut> {
  int _selectedIndex = 0;

  List<Widget> widgets = [
    const AllTybe(),
    const Center(
      child: Text('Full body'),
    ),
    const Center(
      child: Text('Upper'),
    ),
    const Center(
      child: Text('Lower'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/ic-home.png'), label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/ic-arrow.png'), label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/ic-ana.png'), label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/ic-person.png'), label: ''),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/female.png'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello, Jade',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'Ready to workout?',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Badge(
                    child: Icon(Icons.notifications_outlined),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                  color: Color(0xFFF8F9FC),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.favorite_outline),
                            Text('Heart Rate'),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '81',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Text('BPM'),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: 2,
                      color: const Color(0xFFD9D9D9),
                      height: 40,
                    ),
                    const Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.list),
                            Text('To-do'),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '32,5',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Text('%'),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: 2,
                      color: const Color(0xFFD9D9D9),
                      height: 40,
                    ),
                    const Column(
                      children: [
                        Row(
                          children: [
                            Text('Calo'),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '1000',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Text('Cal'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Workout Programs',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Expanded(
                child: DefaultTabController(
                  initialIndex: _selectedIndex,
                  length: widgets.length,
                  child: Column(
                    children: [
                      TabBar(
                        labelPadding: const EdgeInsets.all(12),
                        onTap: (value) {
                          _selectedIndex = value;
                          setState(() {});
                        },
                        tabs: const [
                          Tab(
                            child: Text('All tybe'),
                          ),
                          Tab(
                            child: Text('Full body'),
                          ),
                          Tab(
                            child: Text('Upper'),
                          ),
                          Tab(
                            child: Text('Lower'),
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(children: widgets),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
