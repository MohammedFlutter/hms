import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Destination {
  Destination(
      {required this.icon,
      required this.selectedIcon,
      required this.label,
      required this.routeIndex});

  final Icon icon;
  final Icon selectedIcon; // Add selectedIcon
  final String label;
  final int routeIndex;
}

final patientDestinations = [
  Destination(
    icon: const Icon(Icons.home_outlined),
    selectedIcon: const Icon(Icons.home), // Add selected icon
    label: 'Home',
    routeIndex: 0,
  ),
  Destination(
    icon: const Icon(Icons.search_outlined),
    selectedIcon: const Icon(Icons.search), // Add selected icon
    label: 'Search',
    routeIndex: 1,
  ),
  Destination(
    icon: const Icon(Icons.event_outlined), // Use outlined for unselected
    selectedIcon: const Icon(Icons.event), // Use filled for selected
    // icon: const Icon(Icons.receipt_long_outlined),
    // selectedIcon: const Icon(Icons.receipt_long), // Add selected icon
    label: 'appointment',
    routeIndex: 3,
  ),
  // Destination(
  //   icon: const Icon(Icons.medical_information_outlined),
  //   selectedIcon: const Icon(Icons.medical_information), // Add selected icon
  //   label: 'Prescription',
  //   routeIndex: 4,
  // ),
  Destination(
    icon: const Icon(Icons.person_outline),
    selectedIcon: const Icon(Icons.person), // Add selected icon
    label: 'Profile',
    routeIndex: 6,
  ),
];

final doctorDestinations = [
  Destination(
    icon: const Icon(Icons.home_outlined), // Use outlined for unselected
    selectedIcon: const Icon(Icons.home), // Use filled for selected
    label: 'Home',
    routeIndex: 7,
  ),
  Destination(
    icon: const Icon(Icons.event_outlined), // Use outlined for unselected
    selectedIcon: const Icon(Icons.event), // Use filled for selected
    label: 'Appointment',
    routeIndex: 2,
  ),
  Destination(
    icon: const Icon(Icons.groups_outlined), // Use outlined for unselected
    selectedIcon: const Icon(Icons.groups), // Use filled for selected
    label: 'Patients',
    routeIndex: 5,
  ),
  Destination(
    icon: const Icon(Icons.person_outline), // Use outlined for unselected
    selectedIcon: const Icon(Icons.person), // Use filled for selected
    label: 'Profile',
    routeIndex: 6,
  ),
];

class CustomBottomNavigationBar extends StatefulWidget {
  final StatefulNavigationShell navigationShell;
  final List<Destination> navigationDestinations;

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
    _updateSelectedIndexBasedOnNavigation();
    return NavigationBar(
      destinations: widget.navigationDestinations
          .map((e) => NavigationDestination(
                icon: e.icon,
                label: e.label,
                selectedIcon: e.selectedIcon,
              ))
          .toList(),
      selectedIndex: _selectedIndex,
      onDestinationSelected: (index) => _onDestinationSelected(context, index),
    );
  }
  //to handle routing out
  void _updateSelectedIndexBasedOnNavigation() {
    final navigationIndex = widget.navigationShell.currentIndex;
    final currentIndex = widget.navigationDestinations.indexWhere((e) {
      return e.routeIndex == navigationIndex;
    });

    if (_selectedIndex != currentIndex) {
      setState(() {
        _selectedIndex = currentIndex;
      });
    }
  }

  void _onDestinationSelected(BuildContext context, int index) {
    setState(() {
      _selectedIndex = index;
    });
    // context.goNamed(widget.navigationDestinations[index].route);
    var destinationIndex = widget.navigationDestinations[index].routeIndex;
    widget.navigationShell.goBranch(
      destinationIndex,
      // initialLocation: index == widget.navigationShell.currentIndex
    );
  } // widget.navigationShell.goBranch(6);
}
