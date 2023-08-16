import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../pages/cast_page.dart';
import '../pages/recommend.dart';
import 'all_popular.dart';

class MovieInfo extends StatelessWidget {
  const MovieInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ///thing
          ///back ground poster
          Opacity(
            opacity: 0.4,
            child: Image.asset(
              'images/movie_poster01.jpg',
              height: 240,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          ///half grey back ground
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 240.0),
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.grey,
                // borderRadius: BorderRadius.only(
                //   bottomLeft: Radius.circular(20),
                //   bottomRight: Radius.circular(20),
                // ),
              ),
            ),
          ),

          /// top title
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 70.0, vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Avenger: Endgame',
                  style: TextStyle(
                      shadows: [],
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text('Action, Adventure, Science Fiction'),
              ],
            ),
          ),

          /// all details
          SingleChildScrollView(
            child: SafeArea(
                child: Column(
              children: [
                /// back arrow and heart
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          ///route
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          ///route
                        },
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.pinkAccent,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 55,
                ),

                /// Movie details 01
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.deepPurpleAccent.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 8,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'images/avenger4.jpg',
                            height: 180,
                            width: 120,
                          ),
                        ),
                      ),

                      /// movie details 02
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 80,
                                width: 230,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20.0, vertical: 10),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.local_play_outlined,
                                            size: 20,
                                          ),
                                          Text("10.0 (743,914 Reviews)")
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.theaters_rounded,
                                            size: 20,
                                          ),
                                          Text('15-Aug-2023 Released')
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.watch_later_sharp,
                                            size: 20,
                                          ),
                                          Text('124 mins')
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            /// movie details 03
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 70,
                                width: 230,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        children: [
                                          Icon(Icons.theaters),
                                          Text('Ticket')
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Icon(Icons.bookmark_add),
                                          Text('Wishlist')
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Icon(Icons.ios_share_outlined),
                                          Text('Share')
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                  child: Row(
                    children: [
                      Text(
                        'Overview',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ReadMoreText(
                        'After Thanos, an intergalactic warlord, disintegrates half of the universe, the Avengers must reunite and assemble again to reinvigorate their trounced allies and restore balance.. Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                        trimLines: 4,
                        colorClickableText: Colors.pink,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'Show more',
                        lessStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber),
                        trimExpandedText: 'Show less',
                        moreStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                    ],
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Divider(
                    thickness: 2,
                  ),
                ),

                /// cast list
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                  child: Row(
                    children: [
                      Text(
                        'Cast',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Spacer(),
                      Text(
                        'view all',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),

                /// cast list
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Castlist(),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Divider(
                    thickness: 2,
                  ),
                ),

                /// recommend for you
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      const Text(
                        'Recommend',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
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

                ///recommend for you
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: const RecommendList(),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),
              ],
            )),
          ),
        ],
      ),
    );
  }
}
