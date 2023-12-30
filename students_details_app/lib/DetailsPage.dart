import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  var namefromhome;
  var rollnofromhome = "220869";
  var emailidfromhome = "ramjiyadav22@iitk.ac.in";
  var mobilenofromhome = "8384834760";

  DetailsPage(this.namefromhome, this.rollnofromhome, this.emailidfromhome,
      this.mobilenofromhome);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saved Details'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Container(
          width: 275,
          height: 175,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.black,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Name :',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Text('$namefromhome',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Roll No. :',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Text('$rollnofromhome',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Email Id :',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Text('$emailidfromhome',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Mobile No. :',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Text('$mobilenofromhome',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
