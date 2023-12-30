import 'package:flutter/material.dart';
import 'package:students_details_app/DetailsPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Students Details Application Form',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 4, 49, 183)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Students Details Application Form'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var nameController = TextEditingController();
  var rollnoController = TextEditingController();
  var emailidController = TextEditingController();
  var mobilenoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: 500,
          height: 400,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Colors.black,
            ),
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Name :',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 300,
                    height: 45,
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        label: Text('Enter Your Name'),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.inversePrimary,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.name,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Roll No. :',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 300,
                    height: 45,
                    child: TextField(
                      controller: rollnoController,
                      decoration: InputDecoration(
                        label: Text('Enter Your Roll No'),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.inversePrimary,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Email Id :',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 300,
                    height: 45,
                    child: TextField(
                      controller: emailidController,
                      decoration: InputDecoration(
                        label: Text('Enter Your Email Id'),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.inversePrimary,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Mobile No. :',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 300,
                    height: 45,
                    child: TextField(
                      controller: mobilenoController,
                      decoration: InputDecoration(
                        label: Text('Enter Your Mobile No'),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.inversePrimary,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.name,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 200,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return DetailsPage(
                            nameController.text.toString(),
                            rollnoController.text.toString(),
                            emailidController.text.toString(),
                            mobilenoController.text.toString());
                      },
                    ));
                  },
                  child: Text(
                    'Show Details',
                    style: TextStyle(
                      fontSize: 25,
                    ),
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
