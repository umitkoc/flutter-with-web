import 'package:flutter/material.dart';

class Blog extends StatefulWidget {
  const Blog({Key? key}) : super(key: key);

  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
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
                              onPressed: () {},
                              child: const Text("Read more..."))
                        ],
                      )
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
