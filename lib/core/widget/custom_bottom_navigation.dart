import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Destination {
  Destination({required this.icon, required this.label, required this.routeIndex});

  final Icon icon;
  final String label;
  final int routeIndex;
}

final patientDestinations = [
  Destination(
    icon: const Icon(Icons.home),
    label: 'Home',
    routeIndex: 0,
  ),
  Destination(
    icon: const Icon(Icons.search),
    label: 'Search',
    routeIndex: 1,
  ),
  Destination(
    icon: const Icon(Icons.receipt_long),
    label: 'Lab Results',
    routeIndex:3,
  ),
  Destination(
    icon: const Icon(Icons.medical_information),
    label: 'Prescription',
    routeIndex: 4,
  ),
  Destination(
    icon: const Icon(Icons.person),
    label: 'Profile',
    routeIndex: 6,
  ),
];

final doctorDestinations = [
  Destination(
    icon: const Icon(Icons.home),
    label: 'Home',
    routeIndex: 0,
  ),
  Destination(
    icon: const Icon(Icons.event),
    label: 'Appointment',
    routeIndex:2,
  ),
  Destination(
    icon: const Icon(Icons.groups),
    label: 'Patients',
    routeIndex:5,
  ),
  Destination(
    icon: const Icon(Icons.person),
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
    return NavigationBar(
      destinations: widget.navigationDestinations
          .map((e) => NavigationDestination(icon: e.icon, label: e.label))
          .toList(),
      selectedIndex: _selectedIndex,
      onDestinationSelected: (index) => _onDestinationSelected(context, index),
    );
  }

  void _onDestinationSelected(BuildContext context, int index) {
    setState(() {
      _selectedIndex = index;
    });
    // context.goNamed(widget.navigationDestinations[index].route);
    var destinationIndex =widget.navigationDestinations[index].routeIndex;
    widget.navigationShell.goBranch(destinationIndex,
        // initialLocation: index == widget.navigationShell.currentIndex
    );
  } // widget.navigationShell.goBranch(6);
// }
}
