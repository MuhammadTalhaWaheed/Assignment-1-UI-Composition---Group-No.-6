import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adobe Acrobat Replica',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const AcrobatScreen(),
    );
  }
}

class AcrobatScreen extends StatelessWidget {
  const AcrobatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/adobe_logo.png',
              height: 24,
            ),
            const Expanded(child: SizedBox()), // Spacer
            IconButton(
              icon: const Icon(Icons.notifications_none),
              onPressed: () {}, // No functionality needed
            ),
            IconButton(
              icon: const Icon(Icons.person, size: 24), // Default profile icon
              onPressed: () {}, // No functionality needed
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Recent',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                TextButton(
                  onPressed: () {}, // No functionality needed
                  child: const Text('Starred'),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16.0, top: 16.0, bottom: 8.0),
            child: Text(
              'Welcome back, Taha',
              style: TextStyle(fontSize: 18),
            ),
          ),
          _buildFileItem(
            title: 'Welcome',
            subtitle: 'PDF • Just now • 212.5 KB',
            isStarred: true,
          ),
          _buildFileItem(
            title: '10Pearls University...U - Flutter Step-up',
            subtitle: 'PDF • 8 Feb 2021 • 204.4 KB',
            isStarred: false,
          ),
          _buildFileItem(
            title: 'lecture schdld 21',
            subtitle: 'PDF • 5 Feb 2021 • 5.9 MB',
            isStarred: false,
          ),
          _buildFileItem(
            title: 'VenD00599-7',
            subtitle: 'PDF • 1 Feb 2021 • 27.0 KB',
            isStarred: false,
          ),
          _buildFileItem(
            title: 'Affan_Resume 2',
            subtitle: 'PDF • 25 Jan 2021 • 227.5 KB',
            isStarred: false,
          ),
          _buildFileItem(
            title: 'VenD00599-5',
            subtitle: 'PDF • 1 Jan 2021 • 26.9 KB',
            isStarred: false,
          ),
          _buildFileItem(
            title: 'VenD00599-6',
            subtitle: 'PDF • 1 Jan 2021 • 26.9 KB',
            isStarred: false,
          ),
          _buildFileItem(
            title: '2020-12-18T00:30:05.876220',
            subtitle: 'PDF • 18 Dec 2020 • 32.4 KB',
            isStarred: false,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_drive_file),
            label: 'Files',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.share),
            label: 'Shared',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (_) {}, // No functionality needed
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        shape: const CircleBorder(), // No functionality needed
        child: const Icon(Icons.add), // Fully round border
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget _buildFileItem({
    required String title,
    required String subtitle,
    required bool isStarred,
  }) {
    return ListTile(
      leading: const Icon(Icons.picture_as_pdf, color: Colors.red),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Icon(
        isStarred ? Icons.star : Icons.star_border,
        color: isStarred ? Colors.yellow : Colors.grey,
      ),
    );
  }
}