import 'package:flutter/material.dart';
import 'package:netflix_app/homepage.dart';
import 'package:netflix_app/responsive/responsive.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    double sh = (MediaQuery.of(context).size.height);
    double sw = (MediaQuery.of(context).size.width);
    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                'https://img.freepik.com/free-photo/movie-background-collage_23-2149876015.jpg',
                fit: BoxFit.cover,
              )),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 300,
                  left: 10,
                  right: 10,
                ),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Enter your Email',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1,
                              color: Color.fromARGB(255, 206, 201, 201),
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Enter your Password',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1,
                              color: Color.fromARGB(255, 196, 190, 190),
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 30,
                  left: 130,
                ),
                height: sw * (30 / Responsive.width),
                child: Row(
                  children: [
                    Image.network(
                        'https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-google-icon-logo-png-transparent-svg-vector-bie-supply-14.png'),
                    SizedBox(
                      width: 10,
                    ),
                    Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/1024px-Facebook_Logo_%282019%29.png'),
                    SizedBox(
                      width: 10,
                    ),
                    Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Logo_of_Twitter.svg/512px-Logo_of_Twitter.svg.png?20220821125553'),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Homepage(),
                    ),
                  );
                },
                child: Container(
                  width: sw * (210 / Responsive.width),
                  height: sh * (60 / Responsive.height),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Center(
                    child: Text(
                      'SUBMIT',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: sw * (20 / Responsive.width),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
