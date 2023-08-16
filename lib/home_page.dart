import 'package:flutter/material.dart';
import 'package:flutter_movie_app/pages/recommend.dart';
import 'package:flutter_movie_app/screens/all_popular.dart';

import 'pages/coming.dart';
import 'pages/popular.dart';
import 'pages/toprate.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.view_list_rounded),
          onPressed: () {},
        ),
        title: const Text('THE MOVIE APP'),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
            child: CircleAvatar(
              radius: 23,
              backgroundImage: AssetImage('images/profile101.jpg'),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          /// ONE / Recommend for you
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                const Text(
                  'Recommend',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Text(' For You'),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PopularAll(),
                      ),
                    );
                  },
                  child: const Column(
                    children: [Text('See all')],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: const RecommendList(),
            ),
          ),
          const Divider(
            thickness: 1.5,
          ),

          /// TWO / Popular movie
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                const Text(
                  'Popular',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Text(' Movie'),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PopularAll(),
                      ),
                    );
                  },
                  child: const Column(
                    children: [Text('See all')],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: const PopularList(),
            ),
          ),
          const Divider(
            thickness: 1.5,
          ),

          /// THREE / Coming Soon
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                const Text(
                  'Coming',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Text(' Soon'),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PopularAll(),
                      ),
                    );
                  },
                  child: const Column(
                    children: [Text('See all')],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: const ComingList(),
            ),
          ),
          const Divider(
            thickness: 1.5,
          ),

          /// FOUR / Top rated movie
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                const Text(
                  'Top Rated',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Text(' Movie'),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PopularAll(),
                      ),
                    );
                  },
                  child: const Column(
                    children: [Text('See all')],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: const TopratePage(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
