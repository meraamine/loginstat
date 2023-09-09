import 'package:flutter/material.dart';

void main() {
  runApp(const MyMaterial());
}

class MyMaterial extends StatelessWidget {
  const MyMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login Screen ",
      home: SafeArea(
          child: Scaffold(
              appBar: AppBar(
                title: Text("Login Screen"),
                centerTitle: true,
              ),
              backgroundColor: Colors.white,
              body: Column(
                children: [
                  Icon(Icons.shopping_cart, color: Colors.blue.shade600,
                    size: 100,),
                  MyRowOne(),
                  MyRowTwo(),
                  MyBotton()
                ],
              ))),
    );
  }
}
class MyRowTwo extends StatefulWidget {
  const MyRowTwo({super.key});

  @override
  State<MyRowTwo> createState() => _MyRowTwoState();
}

class _MyRowTwoState extends State<MyRowTwo> {
  @override
  Widget build(BuildContext context) {
    return const Row(children: [

      Expanded(child: TextField(decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Enter User Password ',
          hintText: 'Enter Your User Password'
      ),))
    ],);
  }
}


class MyRowOne extends StatefulWidget {
  const MyRowOne({super.key});

  @override
  State<MyRowOne> createState() => _MyRowOneState();
}

class _MyRowOneState extends State<MyRowOne> {
  @override
  Widget build(BuildContext context) {
    return const Row(children: [
        Expanded
        (child: TextField(decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Enter User Name ',
          hintText: 'Enter Your User Name'
      ),))
    ],);
  }
}
class MyBotton extends StatefulWidget {
  const MyBotton({super.key});

  @override
  State<MyBotton> createState() => _MyBottonState();
}

class _MyBottonState extends State<MyBotton> {
  @override
  Widget build(BuildContext context) {
    return const ElevatedButton(onPressed:onPressed, child: Text("Login "));
  }
}
void onPressed(){}
