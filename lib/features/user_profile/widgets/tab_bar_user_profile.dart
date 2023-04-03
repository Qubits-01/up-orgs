import 'package:flutter/material.dart';
import 'about_tab_user_profile.dart';

class TabBarUserProfile extends StatefulWidget {
  const TabBarUserProfile({super.key});

  @override
  State<TabBarUserProfile> createState() => _TabBarUserProfileState();
}

class _TabBarUserProfileState extends State<TabBarUserProfile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            const TabBar(
              labelColor: Color.fromRGBO(102, 0, 0, 1.0),
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              indicatorColor: Color.fromRGBO(10, 68, 36, 1.0),
              indicatorWeight: 1.3,
              tabs: [
                Tab(
                  text: "About",
                ),
                Tab(
                  text: "Affiliations",
                ),
                Tab(
                  text: "Applications",
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: AboutTab(),
                  ),
                  Container(
                    child: AffiliationsTab(),
                  ),
                  Center(
                    child: Text("Applications Page"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
