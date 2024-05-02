import 'package:animations/animations.dart';
import 'package:go_router/go_router.dart';

class SwitchTransitionPage extends CustomTransitionPage {
  SwitchTransitionPage({
    super.key,
    required super.child,
  }) : super(
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SharedAxisTransition(
              animation: animation,
              secondaryAnimation: secondaryAnimation,
              transitionType: SharedAxisTransitionType.horizontal,
              child: child,
            );
          },
          transitionDuration: const Duration(milliseconds: 300)
        );
}

// class SharedAxisSwitcher extends StatelessWidget {
//   const SharedAxisSwitcher({
//     super.key,
//     required this.child,
//   });
//
//   final Widget child;
//
//   @override
//   Widget build(BuildContext context) {
//     return PageTransitionSwitcher(
//       transitionBuilder: (
//         Widget child,
//         Animation<double> primaryAnimation,
//         Animation<double> secondaryAnimation,
//       ) {
//         return SharedAxisTransition(
//
//           animation: primaryAnimation,
//           secondaryAnimation: secondaryAnimation,
//           transitionType: SharedAxisTransitionType.horizontal,
//           child: child,
//         );
//       },
//       duration: const Duration(milliseconds: 300),
//       child: child,
//     );
//   }
// }
