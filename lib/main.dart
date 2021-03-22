
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.teal),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // int current_step = 0;
  // AlertDialog dialog = new AlertDialog(
  //   content: new Text(
  //     "Dialog is up... ",
  //     style: new TextStyle(fontSize: 30),
  //   ),
  //   title: new Text("Alert!"),
  //   backgroundColor: Colors.redAccent,
  // );
  TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Utils App"),
          bottom: new TabBar(
            controller: tabController,
            tabs: [
              new Tab(
                icon: new Icon(
                  Icons.email
                )
              ),
              new Tab(
                icon: new Icon(
                  Icons.favorite
                )
              ),
              new Tab(
                icon: new Icon(
                  Icons.face
                )
              ),
              new Tab(
                icon: new Icon(
                  Icons.ac_unit
                )
              )
            ]
          ),
        ),
        body: new Container(
          child: new TabBarView(
            children: [
              new NewPage("First"),
              new NewPage("Second"),
              new NewPage("Third"),
              new NewPage("Forth"),
            ],
            controller: tabController,
            
          ),
          

          // child: new Stepper(
          //   steps: [
          //     new Step(title: new Text("Step 2"),
          //     content: new Text("Some conttent 2"),
          //     isActive: false,
          //     ),
          //     new Step(title: new Text("Step 3"),
          //     content: new Text("Some conttent 3"),
          //     isActive: false
          //     ),
          //     new Step(title: new Text("Step 4"),
          //     content: new Text("Some conttent 4"),
          //     isActive: false
          //     ),
          //     new Step(title: new Text("Step 5"),
          //     content: new Text("Some conttent 5"),
          //     isActive: false
          //     )
          //   ],
          //   currentStep: this.current_step ,
          //   type: StepperType.vertical,

          // ),

          //     child: new Center(
          //         child: new RaisedButton(
          //   child:
          //       new Text("Click Me", style: new TextStyle(color: Colors.white)),
          //   color: Colors.redAccent,
          //   //   onPressed: () => Scaffold.of(context).showSnackBar(
          //   //     new  SnackBar(
          //   //         content: new Text("You Click Me"),
          //   //         duration: new Duration(seconds: 3),
          //   //   )
          //   // ),
          //   onPressed: () => showDialog(
          //     context: context,
          //     builder: (context) => dialog,
          //   ),
          // ))
        ),
        floatingActionButton: new FloatingActionButton(
          child: new Icon(
            Icons.add
          ),
          onPressed: () =>  print("FAB Pressed"),
        ),
        );
  }
}

class NewPage extends StatelessWidget {
  final String title;
  NewPage(this.title);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text(title),
      ),
    );
  }
}
