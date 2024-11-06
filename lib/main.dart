import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 18, top: 48),
                child: Text('Sign in with Email',
                    style: TextStyle(fontSize: 38.0, color: Colors.black)),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 83),
                child: Text('Input your brainy account !',
                    style: TextStyle(fontSize: 19.0)),
              ),
              SizedBox(
                  height: 53,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.black, width: 1)),
                    padding: const EdgeInsets.only(right: 13, left: 13),
                    child: TextField(
                      style: const TextStyle(color: Colors.grey),
                      controller: email,
                      decoration: const InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  )),
              const Padding(padding: EdgeInsets.only(bottom: 28)),
              SizedBox(
                  child: Container(
                height: 53,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.black, width: 1)),
                padding: const EdgeInsets.only(right: 13, left: 13),
                child: TextField(
                  style: const TextStyle(color: Colors.grey),
                  controller: password,
                  decoration: const InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              )),
              const Padding(padding: EdgeInsets.only(bottom: 10)),
              //first text
              SizedBox(
                width: 376.0,
                height: 61.0,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll<Color>(
                        Colors.greenAccent),
                    shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Sign In Now',
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
              ),

              const Padding(padding: EdgeInsets.only(bottom: 10)),
              const Padding(padding: EdgeInsets.only(bottom: 10)),
              Container(
                width: 376,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(Icons.star, size: 20),
                    ),
                    Expanded(
                      child: Text('Sign in with Apple',
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.center),
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 10)),
              // second text
              Container(
                width: 376,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(Icons.star, size: 20),
                    ),
                    Expanded(
                      child: Text('Sign in with Google',
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.center),
                    ),
                  ],
                ),
              ),
              SizedBox(
                  width: 327,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text('Forgot Password ?',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black26,
                              fontStyle: FontStyle.italic)))),
              SizedBox(
                  width: 327,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                          'New to the brainy academy? Sign up here',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black26,
                              fontStyle: FontStyle.italic)))),
            ],
          ),
        ),
      ),
    );
  }
}
