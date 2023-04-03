import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const UserProfile(),
    );
  }
}

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();

  static const routeName = "/profile";
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          TopPartUserProfile(),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: SizedBox(
              height: 150,
              child: TabBarUserProfile(),
            ),
          )
        ],
      ),
    );
  }
}

class TopPartUserProfile extends StatelessWidget {
  const TopPartUserProfile({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CoverAndProfileImage(),
        NameAndUniversity(),
      ],
    );
  }
}

class NameAndUniversity extends StatelessWidget {
  const NameAndUniversity({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(children: const [
        Text(
          'John Doe',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'University of the Philippines - Diliman',
          style: TextStyle(fontSize: 16),
        ),
      ]),
    );
  }
}

class CoverAndProfileImage extends StatelessWidget {
  const CoverAndProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 90),
          child: const CoverImage(),
        ),
        const Positioned(
          top: 150,
          child: ProfileImage(),
        ),
      ],
    );
  }
}

class CoverImage extends StatelessWidget {
  const CoverImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 220,
      child: Image.asset('assets/images/avatars/cover_image.jpg',
          fit: BoxFit.cover),
    );
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              color: Colors.white,
              width: 5,
            )),
        child: const CircleAvatar(
          radius: 100,
          backgroundImage: AssetImage('assets/images/avatars/Avatar 1.jpg'),
        ),
      ),
    );
  }
}

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

class AboutTab extends StatefulWidget {
  const AboutTab({super.key});

  @override
  State<AboutTab> createState() => _AboutTabState();
}

class _AboutTabState extends State<AboutTab> {
  final List<bool> _isOpen = [true, false, false, false];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ExpansionPanelList(
        expansionCallback: (index, isOpen) {
          setState(() {
            _isOpen[index] = !isOpen;
          });
        },
        children: [
          ExpansionPanel(
            headerBuilder: (context, isOpen) {
              return const Center(
                child: Text(
                  "Introduction",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.left,
                ),
              );
            },
            body: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vestibulum, eros sed tristique vulputate, sapien nulla facilisis neque, non posuere lorem tellus in ex. Suspendisse potenti. In fermentum tristique ipsum, eget condimentum quam dapibus ut. Fusce ut sollicitudin nibh. Nulla blandit nulla eu risus fringilla, vel pharetra purus laoreet. Donec pretium volutpat nulla sit amet dictum. Curabitur id urna id metus maximus feugiat.",
                textAlign: TextAlign.left,
              ),
            ),
            isExpanded: _isOpen[0],
            canTapOnHeader: true,
          ),
          ExpansionPanel(
            headerBuilder: (context, isOpen) {
              return const Center(
                child: Text(
                  "Personal Information",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.left,
                ),
              );
            },
            body: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vestibulum, eros sed tristique vulputate, sapien nulla facilisis neque, non posuere lorem tellus in ex. Suspendisse potenti. In fermentum tristique ipsum, eget condimentum quam dapibus ut. Fusce ut sollicitudin nibh. Nulla blandit nulla eu risus fringilla, vel pharetra purus laoreet. Donec pretium volutpat nulla sit amet dictum. Curabitur id urna id metus maximus feugiat.",
                textAlign: TextAlign.left,
              ),
            ),
            isExpanded: _isOpen[1],
            canTapOnHeader: true,
          ),
          ExpansionPanel(
            headerBuilder: (context, isOpen) {
              return const Center(
                child: Text(
                  "Interests",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.left,
                ),
              );
            },
            body: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vestibulum, eros sed tristique vulputate, sapien nulla facilisis neque, non posuere lorem tellus in ex. Suspendisse potenti. In fermentum tristique ipsum, eget condimentum quam dapibus ut. Fusce ut sollicitudin nibh. Nulla blandit nulla eu risus fringilla, vel pharetra purus laoreet. Donec pretium volutpat nulla sit amet dictum. Curabitur id urna id metus maximus feugiat.",
                textAlign: TextAlign.left,
              ),
            ),
            isExpanded: _isOpen[2],
            canTapOnHeader: true,
          ),
          ExpansionPanel(
            headerBuilder: (context, isOpen) {
              return const Center(
                child: Text(
                  "Goals/Objectives",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.left,
                ),
              );
            },
            body: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vestibulum, eros sed tristique vulputate, sapien nulla facilisis neque, non posuere lorem tellus in ex. Suspendisse potenti. In fermentum tristique ipsum, eget condimentum quam dapibus ut. Fusce ut sollicitudin nibh. Nulla blandit nulla eu risus fringilla, vel pharetra purus laoreet. Donec pretium volutpat nulla sit amet dictum. Curabitur id urna id metus maximus feugiat.",
                textAlign: TextAlign.left,
              ),
            ),
            isExpanded: _isOpen[3],
            canTapOnHeader: true,
          )
        ],
      ),
    );
  }
}

class AffiliationsTab extends StatefulWidget {
  const AffiliationsTab({super.key});

  @override
  State<AffiliationsTab> createState() => _AffiliationsTabState();
}

class _AffiliationsTabState extends State<AffiliationsTab> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Affiliation(),
        Affiliation(),
        Affiliation(),
        Affiliation(),
      ],
    );
  }
}

class Affiliation extends StatefulWidget {
  const Affiliation({
    super.key,
  });

  @override
  State<Affiliation> createState() => _AffiliationState();
}

class _AffiliationState extends State<Affiliation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      margin: EdgeInsets.all(5),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/cover_image.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: const Center(
        child: Text(
          "GDSC UPD",
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
