import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController id = TextEditingController();
  TextEditingController phone = TextEditingController();
  bool empty = false;
  TextEditingController password = TextEditingController();
  var myKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(221, 74, 176, 243),
          centerTitle: true,
          title: Text(
            'Login Screen',
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
        ),
        body: Form(
          key: myKey,
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextFormField(
                    enabled: true,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'ID can not be empty';
                      }
                      return null;
                    },
                    maxLines: 1,
                    maxLength: 30,
                    controller: id,
                    style: TextStyle(fontSize: 30, color: Colors.black),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(
                              color: Color.fromARGB(221, 99, 105, 98),
                              width: 3)),
                      errorStyle: TextStyle(color: Colors.red, fontSize: 20),
                      errorText:
                          (empty) ? 'this field can not be empty .' : null,
                      labelText: 'Enter Your Name',
                      labelStyle: TextStyle(fontSize: 25, color: Colors.black),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.account_circle,
                          color: Colors.black,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                  TextFormField(
                    enabled: true,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Password can not be empty';
                      }
                      return null;
                    },
                    obscureText: true,
                    maxLines: 1,
                    maxLength: 12,
                    controller: password,
                    style: TextStyle(fontSize: 30, color: Colors.black),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(
                              color: Color.fromARGB(221, 99, 105, 98),
                              width: 3)),
                      labelText: 'Enter Your Password',
                      labelStyle: TextStyle(fontSize: 25, color: Colors.black),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.remove_red_eye,
                          color: Colors.black,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                  TextFormField(
                    enabled: true,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'phone number can not be empty';
                      }
                      return null;
                    },
                    obscureText: true,
                    maxLines: 1,
                    maxLength: 12,
                    controller: phone,
                    style: TextStyle(fontSize: 30, color: Colors.white),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(
                              color: Color.fromARGB(221, 99, 105, 98),
                              width: 3)),
                      labelText: 'Enter Your phone number',
                      labelStyle: TextStyle(fontSize: 25, color: Colors.black),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.contact_phone_rounded,
                          color: Colors.black,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                      height: 20), // Add space between text fields and button
                  GestureDetector(
                    onTap: () {
                      // Add action to perform when "Forgot Password" is tapped
                      print("Forgot Password tapped");
                      // Add your logic for Forgot Password here
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  SizedBox(
                      height:
                          20), 
                  Container(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        padding: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        backgroundColor: Color.fromARGB(
                            221, 74, 176, 243), // Change background color
                        // Add more styling properties as needed
                      ),
                      onPressed: () {
                        setState(() {
                          if (myKey.currentState!.validate()) {
                            print(id.text);
                            print(password.text);
                            print(phone.text);
                            id.clear();
                            password.clear();
                            phone.clear();
                          }
                        });
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                      height:
                          20), 
                  GestureDetector(
                    onTap: () {
                     
                      print("Does not have account? Sign in tapped");
                      
                    },
                    child: Text(
                      'Does not have account? Sign in',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
