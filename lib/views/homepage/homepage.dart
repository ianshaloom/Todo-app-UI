import 'package:extended_sliver/extended_sliver.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/quick_highlights.dart';
import 'widgets/todo_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 16, 29, 47),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 16, 29, 47),
        shadowColor: Colors.white,
        elevation: 0,
        toolbarHeight: 100,
        leading: Padding(
          padding: const EdgeInsets.only(bottom: 10, left: 20),
          child: Container(
            height: 70,
            width: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(134, 136, 136, 136),
              image: DecorationImage(
                image: AssetImage('images/user.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              height: double.infinity,
              width: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 40, 54, 75),
              ),
              child: const Icon(
                Icons.notifications_active,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Color.fromARGB(255, 16, 29, 47),
                elevation: 0,
                scrolledUnderElevation: 0,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    'Good Morning',
                    style: GoogleFonts.montserrat(
                      fontSize: 40,
                      color: Color.fromARGB(255, 95, 139, 252),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  centerTitle: true,
                  titlePadding: EdgeInsets.only(left: 10),
                ),
                expandedHeight: 170,
                collapsedHeight: 70,
              ),
              const SliverPinnedToBoxAdapter(
                child: HighLights(),
              ),
              SliverFixedExtentList.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return const TodoTile();
                },
                itemExtent: 180,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
