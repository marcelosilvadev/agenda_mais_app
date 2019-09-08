import 'package:agenda_mais_app/src/containers/agenda/agenda.dart';
import 'package:agenda_mais_app/src/containers/new_schedule/schedule.dart';
import 'package:agenda_mais_app/src/containers/organizations/organization.dart';
import 'package:agenda_mais_app/src/containers/profile/profile.dart';
import 'package:flutter/material.dart';

Widget TabBarScreen (){
  return DefaultTabController(
    length: 4,
    child: Scaffold(
      body: TabBarView(
        children: [
          NewSchedule(),
          Organization(),
          Agenda(),
          Profile()
        ],
      ),
      bottomNavigationBar: new TabBar(
        tabs: [
          Tab(
            icon: new Icon(Icons.add_alarm, size: 30,),            
          ),
          Tab(
            icon: new Icon(Icons.store, size: 30,),
          ),
          Tab(
            icon: new Icon(Icons.calendar_today, size: 30,),
          ),
          Tab(
            icon: new Icon(Icons.perm_identity, size: 30,),            
          )
        ],
        
        labelStyle: TextStyle(fontSize: 10),
        labelColor: Colors.white,
        unselectedLabelColor: Color.fromRGBO(200, 64, 86, 1.0),
        indicatorColor: Colors.white,
      ),
      backgroundColor: const Color.fromRGBO(247, 64, 106, 1.0),
    ),
  );
}