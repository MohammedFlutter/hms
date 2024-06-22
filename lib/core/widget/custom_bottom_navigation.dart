import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

const patientDestinations = [
  NavigationDestination(
    icon: Icon(Icons.home),
    label: 'Home',
  ),
  NavigationDestination(
    icon: Icon(Icons.search),
    label: 'Search',
  ),
  NavigationDestination(
    icon: Icon(Icons.receipt_long),
    label: 'Lab Results',
  ),
  NavigationDestination(
    icon: Icon(Icons.medical_information),
    label: 'Prescription',
  ),
  NavigationDestination(
    icon: Icon(Icons.person),
    label: 'Profile',
  ),
];

const doctorDestinations = [
  NavigationDestination(
    icon: Icon(Icons.home),
    label: 'Home',
  ),
  NavigationDestination(
    icon: Icon(Icons.event),
    label: 'Appointment',
  ),
  NavigationDestination(
    icon: Icon(Icons.groups),
    label: 'Patients',
  ),
  NavigationDestination(
    icon: Icon(Icons.person),
    label: 'Profile',
  ),
];

class CustomBottomNavigationBar extends StatefulWidget {
  final StatefulNavigationShell navigationShell;
  final List<NavigationDestination> navigationDestinations;

  const CustomBottomNavigationBar({
    super.key,
    required this.navigationShell,
    required this.navigationDestinations,
  });

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: widget.navigationDestinations,
      selectedIndex: _selectedIndex,
      onDestinationSelected: (index) => _onDestinationSelected(context, index),
    );
  }

  void _onDestinationSelected(BuildContext context, int index) {
    setState(() {
      _selectedIndex = index;
    });
    widget.navigationShell.goBranch(index,
        initialLocation: index == widget.navigationShell.currentIndex);
  }
}
