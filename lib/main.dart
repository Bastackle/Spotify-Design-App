import 'package:fluentui_system_icons/fluentui_system_icons.dart';
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF121212),
        appBar: AppBar(
          backgroundColor: const Color(0xFF121212),
          title: const Text(
            'Spotify',
            style: TextStyle(
              color: Color(0xFF1db954), // สีเขียวของ Spotify
              fontSize: 35, // ขนาดตัวอักษร
              fontFamily: 'Montserrat', // ชื่อฟอนต์
              fontWeight: FontWeight.bold, // ตัวหนา
            ),
          ),
          centerTitle: true,
          leading: const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Icon(
              FluentIcons.line_horizontal_3_16_regular,
              color: Color(0xFFF4F4FB),
              size: 35,
            ),
          ),
          actions: const [
            Icon(
              FluentIcons.alert_16_regular,
              color: Color(0xFFF4F4FB),
              size: 33,
            ),
            Icon(
              FluentIcons.history_16_regular,
              color: Color(0xFFF4F4FB),
              size: 35,
            ),
            Padding(
              padding: EdgeInsets.only(right: 15),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            print('Go to queue page');
          },
          label: const Text(
            'Queue',
            style: TextStyle(
              color: Color(0xFF121212),
              fontSize: 20,
              fontFamily: 'Montserrat',
            ),
          ),
          icon: const Icon(
            Icons.queue_music,
            size: 30,
            color: Color(0xFF121212),
          ),
          backgroundColor: const Color(0xFF1db954),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        // floatingActionButton: FloatingActionButton.large(
        //   backgroundColor: const Color(0xFFF4F4FB),
        //   onPressed: () {
        //     print('Test Click!!');
        //   },
        //   shape:
        //     RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        //   child: const Icon(
        //     Icons.add,
        //     size: 50,
        //     color: Color(0xFF5e69ee),
        //   ),
        // ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        bottomNavigationBar: SizedBox(
          height:90,
          child: BottomNavigationBar(
            elevation: 10,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(FluentIcons.home_16_regular),
                  activeIcon: Icon(FluentIcons.home_16_filled),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(FluentIcons.search_16_regular),
                  activeIcon: Icon(FluentIcons.search_16_filled),
                  label: ''),
              BottomNavigationBarItem(
                icon: Icon(FluentIcons.library_16_regular),
                activeIcon: Icon(FluentIcons.library_16_filled),
                label: '',
              ),
            ],

            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor:
                const Color(0xFFF4F4FB), // Color for the selected item
            unselectedItemColor:
                const Color(0xFFb3b3b3), // Color for unselected items
            backgroundColor:
                const Color(0xFF212121), // Optional: Change background color
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(FluentIcons.cd_16_regular,
                    color: Color(0xFFF4F4FB), size: 35),
                Icon(FluentIcons.music_note_2_20_regular,
                    color: Color(0xFFF4F4FB), size: 35),
                Icon(FluentIcons.live_20_regular,
                    color: Color(0xFFF4F4FB), size: 35),
                Text('Wrapped',
                    style: TextStyle(
                        color: Color(0xFFF4F4FB),
                        fontSize: 20,
                        fontFamily: 'Montserrat')),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(
                  left: 10.0, bottom: 10.0), // ระยะห่างจากด้านซ้าย 16.0
              child: Text(
                'Recents',
                style: TextStyle(
                  color: Color(0xFFF4F4FB),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 25,
                ),
                const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/kaze.jpg'),
                    radius: 60),
                const SizedBox(
                  width: 25,
                ),
                ClipRRect(
                  borderRadius:
                      BorderRadius.circular(15), // Adjust the border radius
                  child: Image.asset(
                    'assets/images/yoasobi.jpg', // Your image asset
                    width: 120,
                    height: 120, // Add height for a proportional display
                    fit: BoxFit.cover, // Ensures the image fills the ClipRRect
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                ClipRRect(
                  borderRadius:
                      BorderRadius.circular(15), // Adjust the border radius
                  child: Image.network(
                    'https://i.scdn.co/image/ab67616d0000b27333a8a1d345ed02f6b2b9f50b', // Your image asset
                    width: 120,
                    height: 120, // Add height for a proportional display
                    fit: BoxFit.cover, // Ensures the image fills the ClipRRect
                  ),
                ),
              ],
            ),
            Container(
                margin: const EdgeInsets.only(left: 25, top: 30, bottom: 30),
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://i.scdn.co/image/ab67616d0000b27336f72e16774f67f6a4df173d')),
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(30),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.grey.withOpacity(1.0),
                  //     blurRadius: 5,
                  //     offset: Offset(2, 2),
                  //   ),
                  // ],
                ),
                child: const Padding(
                    padding: EdgeInsets.only(top: 15, left: 25),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Michi Teyu Ku',
                            style: TextStyle(
                                color: Color(0xFFF4F4FB),
                                fontSize: 30,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Playlist • Spotify',
                            style: TextStyle(
                              color: Color(0xFFb3b3b3),
                              fontSize: 15,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ]))),
            const Padding(
              padding: EdgeInsets.only(
                  left: 10.0, bottom: 10.0), // ระยะห่างจากด้านซ้าย 16.0
              child: Text('Best of Fujii Kaze 2020-2024',
                  style: TextStyle(
                      color: Color(0xFFF4F4FB),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat')),
            ),
            Expanded(
              child: ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(top: 10),
                  itemExtent: 70,
                  children: const [
                    ListTile(
                      leading: Icon(FluentIcons.music_note_2_20_filled),
                      title: Text("Tabiji",
                          style: TextStyle(
                              color: Color(0xFFF4F4FB),
                              fontSize: 20,
                              fontFamily: 'Montserrat')),
                      subtitle: Text("Fujii Kaze",
                          style: TextStyle(
                              color: Color(0xFFb3b3b3),
                              fontSize: 15,
                              fontFamily: 'Montserrat')),
                      trailing: Icon(FluentIcons.line_horizontal_3_16_regular),
                    ),
                    ListTile(
                      leading: Icon(FluentIcons.music_note_2_20_filled),
                      title: Text("Workin'Hard",
                          style: TextStyle(
                              color: Color(0xFFF4F4FB),
                              fontSize: 20,
                              fontFamily: 'Montserrat')),
                      subtitle: Text("Fujii Kaze",
                          style: TextStyle(
                              color: Color(0xFFb3b3b3),
                              fontSize: 15,
                              fontFamily: 'Montserrat')),
                      trailing: Icon(FluentIcons.line_horizontal_3_16_regular),
                    ),
                    ListTile(
                      leading: Icon(FluentIcons.music_note_2_20_filled),
                      title: Text("Kaerou",
                          style: TextStyle(
                              color: Color(0xFFF4F4FB),
                              fontSize: 20,
                              fontFamily: 'Montserrat')),
                      subtitle: Text("Fujii Kaze",
                          style: TextStyle(
                              color: Color(0xFFb3b3b3),
                              fontSize: 15,
                              fontFamily: 'Montserrat')),
                      trailing: Icon(FluentIcons.line_horizontal_3_16_regular),
                    ),
                    ListTile(
                      leading: Icon(FluentIcons.music_note_2_20_filled),
                      title: Text("Michi Teyu Ku (Overflowing)",
                          style: TextStyle(
                              color: Color(0xFFF4F4FB),
                              fontSize: 20,
                              fontFamily: 'Montserrat')),
                      subtitle: Text("Fujii Kaze",
                          style: TextStyle(
                              color: Color(0xFFb3b3b3),
                              fontSize: 15,
                              fontFamily: 'Montserrat')),
                      trailing: Icon(FluentIcons.line_horizontal_3_16_regular),
                    ),
                    ListTile(
                      leading: Icon(FluentIcons.music_note_2_20_filled),
                      title: Text("Garden",
                          style: TextStyle(
                              color: Color(0xFFF4F4FB),
                              fontSize: 20,
                              fontFamily: 'Montserrat')),
                      subtitle: Text("Fujii Kaze",
                          style: TextStyle(
                              color: Color(0xFFb3b3b3),
                              fontSize: 15,
                              fontFamily: 'Montserrat')),
                      trailing: Icon(FluentIcons.line_horizontal_3_16_regular),
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
