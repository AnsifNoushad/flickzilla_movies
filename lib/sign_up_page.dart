import 'package:flutter/material.dart';
import 'package:netflix_app/homepage.dart';
import 'package:netflix_app/loginpage.dart';
import 'package:netflix_app/responsive/responsive.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    double sh = (MediaQuery.of(context).size.height);
    double sw = (MediaQuery.of(context).size.width);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://wallpapercave.com/wp/wp2383818.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(60),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(
                      top: 280,
                      left: 20,
                    ),
                    // child: Text(
                    //   'SIGN UP',
                    //   style: TextStyle(
                    //     color: Color.fromARGB(255, 212, 27, 6),
                    //     fontSize: sw * (40 / Responsive.width),
                    //     // fontSize: 40,
                    //     fontWeight: FontWeight.w600,
                    //   ),
                    // ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Enter your username',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1,
                            color: Colors.black,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Enter your Email',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1,
                            color: Colors.black,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Enter your Password',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1,
                            color: Colors.black,
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
            Container(
              margin: EdgeInsets.only(
                left: 98,
                top: 30,
              ),
              child: Row(
                children: [
                  Text(
                    'Already a member ?',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Loginpage(),
                        ),
                      );
                    },
                    child: Container(
                      child: Text(
                        "  Log'In",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
