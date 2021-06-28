import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myweb/core/views/blog.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Expanded(
        child: Row(
          children: [
            MediaQuery.of(context).size.width < 1000
                ? const SizedBox(width: 0)
                : leftSide(),
            rightSide(),
          ],
        ),
      )
    ]));
  }

  Expanded rightSide() {
    return Expanded(
        flex: 5,
        child: GridView.builder(
            itemCount: 12,
            scrollDirection: Axis.vertical,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 400,
              mainAxisExtent: 400,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (_, index) => OpenContainer(
                transitionDuration: const Duration(seconds: 3),
                closedBuilder: (context, _) => const Home(),
                openBuilder: (context, _) => Blog())));
  }

  Widget blogCard() {
    return Card(
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.amber,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png"))),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(5),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "lorem ipsum dolor?",
                      style: TextStyle(fontSize: 24),
                    ),
                    const Center(
                      child: Text(
                          "loremIllo cupiditate ratione eaque adipisci sequi dolorem quasi omnis. Voluptatibus nulla qui error quia quasi sapiente eveniet aut."),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {}, child: const Text("Read more..."))
                      ],
                    )
                  ]),
            ),
          )
        ],
      ),
    );
  }

  Expanded leftSide() {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SizedBox(height: 50),
                TextButton(
                    onPressed: () {},
                    child: const Text("ÜMIT KOÇ",
                        style: TextStyle(
                            fontFamily: "Sriracha",
                            color: Colors.black,
                            fontSize: 38,
                            fontWeight: FontWeight.w700))),
                const SizedBox(height: 100),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.house, color: Colors.grey),
                    label: const Text("ANASAYFA",
                        style: TextStyle(
                            fontFamily: "Sriracha",
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w700))),
                const SizedBox(height: 50),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.pencil_outline,
                        color: Colors.grey),
                    label: const Text("YAZILARIM",
                        style: TextStyle(
                            fontFamily: "Sriracha",
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w700))),
                const SizedBox(height: 50),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.person_alt_circle,
                        color: Colors.grey),
                    label: const Text("HAKKIMDA",
                        style: TextStyle(
                            fontFamily: "Sriracha",
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w700))),
              ],
            ),
            Column(
              children: [
                const Text("© version 2.1"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.home, color: Colors.grey)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.home, color: Colors.grey)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.home, color: Colors.grey)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.home, color: Colors.grey)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.home, color: Colors.grey)),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
