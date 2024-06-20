import 'package:flutter/material.dart';
import 'package:project_app/view/widgets/adaptive_layour.dart';
import 'package:project_app/view/widgets/custom_drawer.dart';
import 'package:project_app/view/widgets/desktop_dashboard.dart';
import 'package:project_app/view/widgets/mobile_layout_dashboard.dart';
import 'package:project_app/view/widgets/tablet_layout_dashboard.dart';

class ResponsiveView extends StatefulWidget {
  const ResponsiveView({super.key});

  @override
  State<ResponsiveView> createState() => _ResponsiveViewState();
}

class _ResponsiveViewState extends State<ResponsiveView> {
  final GlobalKey<ScaffoldState> globalKeyScaffold=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKeyScaffold,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xFFFAFAFA),
              leading: IconButton(
                
                onPressed: (){
               globalKeyScaffold.currentState!.openDrawer();
              }, icon:const Icon(Icons.menu))
            )
          : null,
          drawer: MediaQuery.sizeOf(context).width < 800 ?const CustomDrawer():null,
      backgroundColor: Colors.white,
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileLayoutDashboard(),
        tablatLayout: (context) => const TabletLayoutDashboard(),
        desktopLayout: (context) => const DesktopDashboard(),
      ),
    );
  }
}
