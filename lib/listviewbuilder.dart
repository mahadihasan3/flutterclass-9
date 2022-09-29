import 'package:flutter/material.dart';

class listviewbuilder extends StatefulWidget {
  const listviewbuilder({Key? key}) : super(key: key);

  @override
  State<listviewbuilder> createState() => _listviewbuilderState();
}

class _listviewbuilderState extends State<listviewbuilder> {
  final List<Widget> _post = [
    Image.asset(
      "assets/images/ani1.jpg",
      fit: BoxFit.cover,
    ),
    Image.asset(
      "assets/images/ani2.jpg",
      fit: BoxFit.cover,
    ),
    Image.asset(
      "assets/images/ani4.jpg",
      fit: BoxFit.cover,
    ),
    Image.asset(
      "assets/images/ani1.jpg",
      fit: BoxFit.cover,
    ),
    Image.asset(
      "assets/images/ani2.jpg",
      fit: BoxFit.cover,
    ),
    Image.asset(
      "assets/images/ani4.jpg",
      fit: BoxFit.cover,
    ),
    Image.asset(
      "assets/images/ani1.jpg",
      fit: BoxFit.cover,
    ),
    Image.asset(
      "assets/images/ani2.jpg",
      fit: BoxFit.cover,
    ),
    Image.asset(
      "assets/images/ani4.jpg",
      fit: BoxFit.cover,
    ),
    Image.asset(
      "assets/images/ani4.jpg",
      fit: BoxFit.cover,
    ),
  ];

  final List<String> _name = [
    "alex",
    "bob",
    "jerry",
    "toom",
    "Pokemone",
    "Minato",
    "mikey",
    "peny",
    "era",
    "devad"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: ListView.builder(
              itemCount: _post.length,
              itemBuilder: (context, index) {
                return contsinerlist(
                  img: _post[index],
                  namtext: _name[index],
                );
              })),
    );
  }
}

class contsinerlist extends StatelessWidget {
  contsinerlist({required this.img, required this.namtext});
  final Widget img;
  final String namtext;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      color: Color.fromARGB(255, 0, 0, 0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 30.00,
              ),
            ),
            title: Text(
              namtext,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            trailing: Icon(
              Icons.more_vert_rounded,
              color: Colors.white,
              size: 30.00,
            ),
          ),

          /////////////////////////
          SizedBox(
            height: 5.00,
          ),
          Container(
            height: 200.00,
            width: MediaQuery.of(context).size.width,

            //
            child: img,
          ),
          SizedBox(
            height: 5.00,
          ),
          Row(
            children: [
              Icon(
                Icons.favorite_outline_sharp,
                color: Colors.white,
                size: 30.00,
              ),
              Icon(
                Icons.maps_ugc_sharp,
                color: Colors.white,
                size: 30.00,
              ),
              Icon(
                Icons.telegram_outlined,
                color: Colors.white,
                size: 30.00,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.8,
              ),
              Icon(
                Icons.bookmark_border_outlined,
                color: Colors.white,
                size: 30.00,
              ),
            ],
          ),
          SizedBox(
            height: 5.00,
          ),
          Text(
            "248 likes",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            "flutter_coding...",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
