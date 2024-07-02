import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:medica/core/const/text_style.dart';
import 'package:medica/core/helper/custom_snake_bar.dart';
import 'package:medica/features/profile/business_logic/profile/profile_bloc.dart';
import 'package:medica/features/profile/business_logic/profile/profile_event.dart';
import 'package:medica/features/profile/business_logic/profile/profile_state.dart';

import 'package:medica/features/profile/data/model/profile.dart';
import 'package:medica/features/profile/ui/widget/profile_card.dart';
import 'package:medica/generated/assets.dart';
import 'package:medica/core/route/route.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    super.key,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();

  static const tiles = [
    // (icon:Icons. ),
  ];
}

class _ProfilePageState extends State<ProfilePage> {
  final String imageUri =
      'https://marketplace.canva.com/EAFauoQSZtY/1/0/1600w/canva-brown-mascot-lion-free-logo-qJptouniZ0A.jpg';

  @override
  void initState() {
    super.initState();
    context.read<ProfileBloc>().add(const ProfileEvent.getProfile());
  }

  // final String name = 'mohammed abdo';
  @override
  Widget build(BuildContext context) {
    context.read<ProfileBloc>().add(const ProfileEvent.getProfile());

    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () {},
            logoutSuccess: () => context.goNamed(CustomRoutes.signIn),
            failure: (error) => CustomSnakeBar.show(
                context: context, isError: true, message: error));
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Profile'),
          ),
          body: RefreshIndicator(
            onRefresh: () async {
              context
                  .read<ProfileBloc>()
                  .add(const ProfileEvent.getProfile()); // Refresh appointments
            },
            child: state.maybeWhen(
                orElse: () => const SizedBox(),
                loading: () {
                  return const Center(child: CircularProgressIndicator());
                },
                success: (profile) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: SingleChildScrollView(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        buildProfileInfo(context, profile),
                        Gap(16.h),
                        buildBody(context)
                      ],
                    )),
                  );
                }),
          ),
        );
      },
    );
  }

  Widget buildProfileInfo(BuildContext context, Profile profile) {
    return Column(
      children: [
        // Text(
        //   'Profile',
        //   style: CustomTextStyle.h1.copyWith(fontWeight: FontWeight.w600),
        // ),
        Gap(16.h),
        _buildPicture(context),
        Gap(16.h),
        Text(
          '${profile.firstname} ${profile.lastname}',
          style: CustomTextStyle.h2,
        ),
        Gap(4.h),
        Text(
          profile.phone ?? '',
          style: CustomTextStyle.bodyXSMedium,
        ),
      ],
    );
  }

  Widget _buildPicture(BuildContext context) {
    final randomColor = Colors.primaries[
        DateTime.now().millisecondsSinceEpoch % Colors.primaries.length];

    return Stack(
      children: [
        InkWell(
          onTap: () => _selectImage(context),
          // child: Container(
          //   width: 100,
          //   height: 100,
          //   decoration: BoxDecoration(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(80.r),
            child: Container(
              color: const Color(0xFFEDEDF8),
              // color: Colors.red,
              width: 160,
              height: 160,
              alignment: AlignmentDirectional.center,
              child: Transform.translate(
                offset: Offset(-20, 0),
                // offset: const Offset(0, 0),
                child:
                    // Image.network(
                    //   imageUri,
                    //   height: 200,
                    //   width: 200,
                    // )
                    Icon(
                  Icons.person,

                  size: 200,
                  color: randomColor,
                  // color: Color(0xFFE5E7EB),
                ),
              ),
            ),
          ),
        ),
        // Positioned(
        //     bottom: 10,
        //     right: 10,
        //     child: Container(
        //         height: 30,
        //         width: 30,
        //         decoration: const BoxDecoration(
        //             color: Colors.black,
        //             shape: BoxShape.rectangle,
        //             borderRadius: BorderRadius.only(
        //               topLeft: Radius.circular(4),
        //               topRight: Radius.circular(4),
        //               bottomRight: Radius.circular(4),
        //             )),
        //         child: const Icon(
        //           Icons.edit_outlined,
        //           color: Colors.white,
        //         ))),
      ],
    );
  }

  void _selectImage(BuildContext context) {}

  Widget buildBody(BuildContext context) {
    return Column(
      children: [
        ProfileCard(
          name: 'Edit Profile',
          svgIconPath: Assets.iconsEditProfile,
          onTap: () => _onEditProfile(context),
        ),
        const Divider(),
        ProfileCard(
          name: 'Favorite',
          svgIconPath: Assets.iconsFavorite,
          onTap: () => _onFavorite(context),
        ),
        const Divider(),
        ProfileCard(
          name: 'Notifications',
          svgIconPath: Assets.iconsNotifications,
          onTap: () => _onNotifications(context),
        ),
        const Divider(),
        ProfileCard(
          name: 'Settings',
          svgIconPath: Assets.iconsSettings,
          onTap: () => _onSettings(context),
        ),
        const Divider(),
        ProfileCard(
          name: 'Help and Support',
          svgIconPath: Assets.iconsMessageQuestion,
          onTap: () => _onHelp(context),
        ),
        const Divider(),
        // ProfileCard(
        //   name: 'Term and Conditions',
        //   svgIconPath: Assets.iconsSecuritySafe,
        //   onTap: () => _onTermsAndCondition(context),
        // ),
        // const Divider(),
        ProfileCard(
          name: 'Log Out',
          svgIconPath: Assets.iconsLogout,
          onTap: () => _onLogOut(context),
        )
      ],
    );
  }

  void _onEditProfile(BuildContext context) {
    context.pushNamed(CustomRoutes.fillProfile);
  }

  void _onFavorite(BuildContext context) {}

  void _onNotifications(BuildContext context) {}

  void _onSettings(BuildContext context) {}

  void _onHelp(BuildContext context) {}

  void _onLogOut(BuildContext context) {
    context.read<ProfileBloc>().add(const ProfileEvent.logout());
  }
}
