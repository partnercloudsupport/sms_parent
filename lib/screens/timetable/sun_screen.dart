import 'package:flutter/material.dart';
import 'package:sms_parent/models/timetable.dart';
import 'package:sms_parent/dao/apicommondao.dart';

class SunScreen extends StatefulWidget{
final sectionId;
const SunScreen({Key key, this.sectionId}) : super(key: key);
@override
_SunScreenState createState() => new _SunScreenState();
}

class _SunScreenState extends State<SunScreen>{

@override
Widget build(BuildContext context) {
    return Scaffold(
       body: FutureBuilder<List<TimeTable>>(
        future: new ApiCommonDao().getTimeTableListByClassId(widget.sectionId, 'Sunday'),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);

          return snapshot.hasData
              ? TimeTableList(timetable: snapshot.data)
              : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

class TimeTableList extends StatelessWidget {
  final List<TimeTable> timetable;
TimeTableList({Key key, this.timetable}) : super(key: key);
 
 
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      
         itemCount: timetable.length,
         itemBuilder: (context, index) {
         final item=timetable[index];
         return ListTile(
          title: new Text(item.subjectName+'           '+item.startTime+' - '+item.endTime,
          style: TextStyle(fontFamily:'Zawgyi' ),),
          
         );
         }
      );
    
        
  }
}
