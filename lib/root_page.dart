import 'package:click_mart_desing/home_pages.dart';
import 'package:flutter/material.dart';

class RoutePage extends StatefulWidget {
  const RoutePage({Key? key}) : super(key: key);

  @override
  State<RoutePage> createState() => _RoutePageState();
}

class _RoutePageState extends State<RoutePage> {

  int currentPages = 0;
  late final List<Widget> pages;

  @override
  void initState() {
    super.initState();
    pages = [HomePages()];
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;
    final ColorScheme csh = theme.colorScheme;
    return Scaffold(
        backgroundColor: Colors.white,
        body: pages[currentPages],
        bottomNavigationBar: SizedBox(
          width: double.infinity,
          height: 75,
          child: ClipRRect(
            borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
            child: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
                BottomNavigationBarItem(icon: Icon(Icons.heart_broken),label: "Wishlist"),
                BottomNavigationBarItem(icon: Icon(Icons.file_copy_outlined),label: "My Order"),
                BottomNavigationBarItem(icon: Icon(Icons.file_open_outlined),label: "Card"),
                BottomNavigationBarItem(icon: Icon(Icons.person_off_outlined),label: "profile"),
              ],
              currentIndex: currentPages,
              onTap: (value) {
                setState(() {
                  currentPages = value;
                });
              },
              type: BottomNavigationBarType.fixed,
              backgroundColor: csh.primary,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey,
            ),
          ),
        ),
    );
  }
}
