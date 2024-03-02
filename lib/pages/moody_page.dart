import 'package:carousel_slider/carousel_slider.dart';
import 'package:exam/widgets/excersice_card.dart';
import 'package:exam/widgets/feature_card.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MoodyPage extends StatefulWidget {
  static const String routeName = 'Moody';
  const MoodyPage({super.key});

  @override
  State<MoodyPage> createState() => _MoodyPageState();
}

class _MoodyPageState extends State<MoodyPage> {
  int selectedIndex = 0;

  bool isSelectedChoice = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Moody',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Image.asset('assets/images/ic-leaves.png'),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Badge(
              child: Icon(
                Icons.notifications_outlined,
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/ic-home.png'), label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/ic-menu.png'), label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/ic-calender.png'), label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/ic-person.png'), label: ''),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Hello,',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Sara Rose',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(
                      'How are you feeling today ?',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          child: CircleAvatar(
                            child: Image.asset('assets/images/ic-love.png'),
                          ),
                        ),
                        CircleAvatar(
                          radius: 30,
                          child: CircleAvatar(
                            child: Image.asset('assets/images/ic-cool.png'),
                          ),
                        ),
                        CircleAvatar(
                          radius: 30,
                          child: CircleAvatar(
                            child: Image.asset('assets/images/ic-happy.png'),
                          ),
                        ),
                        CircleAvatar(
                          radius: 30,
                          child: CircleAvatar(
                            child: Image.asset('assets/images/ic-sad.png'),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Feature',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Text(
                            'See more',
                            style: TextStyle(
                              color: Color(0xFF027A48),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF027A48),
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                CarouselSlider.builder(
                  options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      selectedIndex = index;
                      setState(() {});
                    },
                    autoPlay: true,
                    viewportFraction: 1,
                    aspectRatio: 16 / 9,
                    initialPage: selectedIndex,
                  ),
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) =>
                      const FeatureCard(),
                ),
                const SizedBox(
                  height: 12,
                ),
                AnimatedSmoothIndicator(
                  activeIndex: selectedIndex,
                  count: 3,
                  effect: const SlideEffect(
                    spacing: 8.0,
                    radius: 50.0,
                    dotWidth: 8.0,
                    dotHeight: 8.0,
                    paintStyle: PaintingStyle.stroke,
                    strokeWidth: 1.5,
                    dotColor: Colors.grey,
                    activeDotColor: Colors.indigo,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Exercise',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Text(
                            'See more',
                            style: TextStyle(
                              color: Color(0xFF027A48),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF027A48),
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ExerciseCard(
                      color: Color(0xFFF9F5FF),
                      title: 'Relaxation',
                      imagePath: 'assets/images/ic-relaxation.png',
                    ),
                    ExerciseCard(
                      color: Color(0xFFFDF2FA),
                      title: 'Meditation',
                      imagePath: 'assets/images/ic-med.png',
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ExerciseCard(
                      color: Color(0xFFF9F5FF),
                      title: 'Relaxation',
                      imagePath: 'assets/images/ic-breathing.png',
                    ),
                    ExerciseCard(
                      color: Color(0xFFFDF2FA),
                      title: 'Meditation',
                      imagePath: 'assets/images/ic-yoga.png',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




// ChoiceChip(
//                   label: const Text('Choice Chip'),
//                   showCheckmark: false,
//                   avatar: Image.asset('assets/images/ic-relaxation.png'),
//                   selected: isSelectedChoice,
//                   onSelected: (_) {
//                     isSelectedChoice = _;
//                     setState(() {});
//                   },
//                 ),