import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget buildDailyDigest() {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.grey[200],
      child: const Row(
        children: [
          Icon(Icons.article, color: Colors.black54),
          SizedBox(width: 10),
          // Text("Your Daily Digest\n"),
          Expanded(
              child: Text(
                  "Your Daily Digest\n\"What if I don't train my abs and everything...\"",
                  style: TextStyle(fontWeight: FontWeight.bold))),
        ],
      ),
    );
  }

  Widget buildPost(
      String author,
      String sharedBy,
      String extra,
      String title,
      String description,
      String logoPath,
      String imagePath,
      String likes,
      String comments) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage:
                      AssetImage(logoPath), // Example profile image
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(author,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    Text(sharedBy,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 12)),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.close, color: Colors.black54),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: (extra != "")
                ? Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage(
                            "images/placeholder.jpg"), // Example author image
                        radius: 12,
                      ),
                      const SizedBox(width: 8),
                      Text(extra,
                          style: const TextStyle(
                              fontSize: 12, color: Colors.black54)),
                    ],
                  )
                : null,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black, fontSize: 16),
                children: [
                  TextSpan(
                    text: title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              description,
              style: const TextStyle(color: Colors.black54),
            ),
          ),
          const SizedBox(height: 8),
          Image.asset(imagePath,
              fit: BoxFit.cover, height: 200, width: double.infinity),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.arrow_upward),
                    const SizedBox(width: 4),
                    Text(likes),
                  ],
                ),
                const Icon(Icons.arrow_downward),
                const Icon(Icons.refresh),
                Row(
                  children: [
                    const Icon(Icons.comment_outlined),
                    const SizedBox(width: 4),
                    Text(comments),
                  ],
                ),
                const Icon(Icons.share),
                const Icon(Icons.more_horiz),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDiscoverSpaces() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Discover New Spaces",
              style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage("images/graph.png"),
            ),
            title: const Text("Algorithms",
                style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: const Text("Mindblowing algorithms & interview prep"),
            trailing: Text("${(127500 / 1000).toStringAsFixed(1)}K followers"),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage("images/dem.jpg"),
            ),
            title: const Text("Data Engineering Minds",
                style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: const Text(
                "Data Engineering Techniques & Big Data Technologies"),
            trailing: Text("${(6000 / 1000).toStringAsFixed(1)}K followers"),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CircleAvatar(
            backgroundImage: AssetImage("images/placeholder.jpg")),
        title: const Text('Home',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
              icon: const Icon(Icons.search, color: Colors.black),
              onPressed: () {})
        ],
      ),
      body: ListView(
        children: [
          buildDailyDigest(),
          buildPost(
            "Human Psychology Facts · Mon",
            "Shared by Aliya Khan",
            "Darcy Cristaudo · Updated Mon",
            "In the Maze Runner, why couldn't the main characters just build up a ladder to go over the walls?",
            "I actually questioned this very idea when I first saw the movie however just think about it. The walls of the Glades are 300 feet tall.",
            "images/logo1.jpeg",
            "images/img1.jpg",
            "226",
            "4",
          ),
          buildPost(
            "Peter Cheung · December 3",
            "Barrister (2017-Present)",
            "",
            "As a landlord, who (without naming names) is a tenant you will never forget, and why?",
            "The Tenant Peter Cheung 2020 The 1990s. My medium-sized premises to let was decent and modern. My 1st tenant who was a univer",
            "images/logo2.jpg",
            "images/img2.jpeg",
            "10.8k",
            "39",
          ),
          buildPost(
            "Donald Michael Graham · February 3",
            "Lives in New Zealand (1956-Present)",
            "",
            "Instead of pushing garbage into landfills, why not drop it into an active volcano?",
            "Volcanoes are an output phenomena, not an input. If you put stuff into them, trash, everything will burn but everything else will cor",
            "images/logo3.jpeg",
            "images/img3.jpg",
            "6900",
            "37",
          ),
          buildDiscoverSpaces(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        backgroundColor: Colors.red,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(icon: const Icon(Icons.home), onPressed: () {}),
            IconButton(icon: const Icon(Icons.list), onPressed: () {}),
            const SizedBox(width: 40), // Space for floating button
            IconButton(icon: const Icon(Icons.edit), onPressed: () {}),
            IconButton(icon: const Icon(Icons.people), onPressed: () {}),
            IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
