import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _formKey = GlobalKey<FormState>();
  var isLoading = false;

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body
      body: Padding(
        padding: const EdgeInsets.all(65.0),
        //form
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Text(
                "Clothywave",
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 84, 9, 104)),
              ),
              //styling
              
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(25),
                  child: const Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(255, 84, 9, 104),
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              Container(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value)) {
                        return 'Enter a valid email!';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      labelText: 'Email',
                    ),
                  )),
              //box styling

              //text input
              Container(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter a valid password!';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    labelText: 'Password',
                  ),
                ),
              ),

              ElevatedButton(
                  child: Text(
                    'Sign  In',
                    style: TextStyle(color: Color.fromARGB(255, 33, 9, 104)),
                  ),
                  onPressed: () => _submit(),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  )))),
                  SizedBox(height: 20,),

             Row(
              mainAxisAlignment: MainAxisAlignment.start,
               children: [


                 Container(
                  
                  padding: EdgeInsets.only(left: 15.0),
                   child: TextButton(
                    
                          child: const Text(
                            'Forget Password?',
                            style: TextStyle(
                                fontSize: 15, color: Color.fromARGB(255, 84, 9, 104)),
                          ),
                          onPressed: () {
                          },
                        ),
                 ),
               ],
             ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text(
                      "Do not have an account? ",
                      style: TextStyle(color: Color.fromARGB(255, 84, 9, 104)),
                    ),
                  ),
                  TextButton(
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 20, color: Color.fromARGB(255, 84, 9, 104)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondRoute()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondRoute extends StatefulWidget {
  const SecondRoute({super.key});

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  var _formKey = GlobalKey<FormState>();
  var isLoading = false;

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body
      body: Padding(
        padding: const EdgeInsets.all(65.0),
        //form
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Text(
                "Clothywave",
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 84, 9, 104)),
              ),
              //styling
             
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(25),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(255, 84, 9, 104),
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              Container(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value)) {
                        return 'Enter a valid email!';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      labelText: 'Email',
                    ),
                  )),
              //box styling

              //text input
              Container(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter a valid Name!';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    labelText: 'Name',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter a valid password!';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    labelText: 'Password',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter a valid password!';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    labelText: 'Confirm Password',
                  ),
                ),
              ),

              ElevatedButton(
                  child: Text(
                    'Sign  Up',
                    style: TextStyle(color: Color.fromARGB(255, 33, 9, 104)),
                  ),
                  onPressed: () => _submit(),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  )))),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text(
                      "Already  have an account? ",
                      style: TextStyle(color: Color.fromARGB(255, 84, 9, 104)),
                    ),
                  ),
                  TextButton(
                    child: const Text(
                      'Log In',
                      style: TextStyle(
                          fontSize: 20, color: Color.fromARGB(255, 84, 9, 104)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
