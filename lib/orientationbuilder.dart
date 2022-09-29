import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class myorientational extends StatefulWidget {
  const myorientational({Key? key}) : super(key: key);

  @override
  State<myorientational> createState() => _myorientationalState();
}

class _myorientationalState extends State<myorientational> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return orientationbuil();
          }
          return landscriptmode();
        },
      ),
    );
  }
}

class orientationbuil extends StatelessWidget {
  const orientationbuil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300.00,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/images/ani6.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "NARUTO",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber[600]),
                ),
              ),
              Container(
                height: 2.00,
                width: 250.00,
                color: Colors.amber,
              ),
              Container(
                padding: EdgeInsets.all(10.00),
                child: Text(
                  "Naruto is a Japanese manga series written and illustrated by Masashi Kishimoto. It tells the story of Naruto Uzumaki, a young ninja who seeks recognition from his peers and dreams of becoming the Hokage, the leader of his village.The story is told in two parts – the first set in Naruto's pre-teen years, and the second in his teens. The series is based on two one-shot manga by Kishimoto: Karakuri (1995), which earned Kishimoto an honorable mention in Shueisha's monthly Hop Step Award the following year, and Naruto (1997).",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class landscriptmode extends StatelessWidget {
  const landscriptmode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10.00, left: 5),
                    height: 200.00,
                    width: 200.00,
                    // width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      "assets/images/ani6.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "NARUTO",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.amber[600]),
                        ),
                      ),
                      Container(
                        height: 2.00,
                        width: 150.00,
                        color: Colors.amber,
                      ),
                      Container(
                        width: 300.00,
                        padding: EdgeInsets.all(10.00),
                        child: Text(
                          "Naruto is a Japanese manga series written and illustrated by Masashi Kishimoto. It tells the story of Naruto Uzumaki, a young ninja who seeks recognition from his peers and ",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Text(
                "dreams of becoming the Hokage, the leader of his village.The story is told in two parts – the first set in Naruto's pre-teen years, and the second in his teens. The series is based on two one-shot manga by Kishimoto: Karakuri (1995), which earned Kishimoto an honorable mention in Shueisha's monthly Hop Step Award the following year, and Naruto (1997).",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
