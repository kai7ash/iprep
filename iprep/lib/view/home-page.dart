import 'package:flutter/material.dart';
import 'package:studyapp/View/progress_report.dart';
import 'package:studyapp/View/qanda.dart';
import 'package:studyapp/View/login.dart';

class HomePage extends StatefulWidget {
  @override 
  Home createState() => new Home();

}

class Home extends State<HomePage> with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = new TabController(vsync: this,initialIndex: 1, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        
        title: new Text("Study App"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          tabs: <Widget>[
            new Tab(text: "P.R." ),
            new Tab(text: "Q & A"),
            new Tab(text: "Login"),
          ],
        ),
actions: <Widget>[new Icon(Icons.search), new Icon(Icons.more_vert)],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new ProgressReport(),
          new QandA(),
          new Login(),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: ()=> print("Report The Question(s)"),
      ),
    );

  }
}