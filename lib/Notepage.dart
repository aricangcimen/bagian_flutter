import 'package:flutter/material.dart';
import 'package:bagian_flutter/DBHelper.dart';
import 'package:bagian_flutter/mynote.dart';


class Notepage  extends StatefulWidget {
  @override
  
  Notepage(this.mynote, this.isNew);
  final Mynote _mynote;
  final bool _isNew;
  _Notepage State createState() => _Notepage State();
}

class _Notepage State extends State<Notepage > {
 String title;
  @override
  Widget build(BuildContext context) {
   
   if(widget._isNew){
     title = "New Note";

   }
   
   
    return scaffold(
      appBar:  AppBar(title: Text(
        title : Center
        child : Text (title , style: TextStyle(color: Colors.white , fontSize = 20.0),) ,
        backgroundColor : Colors.white,             
                     elevation : 0.0 ,
                      action : <Widget>
                       IconButton(
                         onPressed : () => Navigator.pop(contex),
                         icon : Icon(Icons.close , color : Colors.black , size : 25.0 ,),
                    )
                       ),
      ),
      backgroundColor : Colors.white ,
      body : column(
        children : <Widget>[
          Row (
            children: <Widget>
            [ Createbutton(icon : Icon.save , enable :
            
      ],
          ),
        ],
        ),
    );
  }
}
class CreateButton extends StatelessWidget {
  final IconData icon;
  final bool enable;
  final onpress;
  CreateButton(this.icon , this.enable ,this.onpress)
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle , color: enable? Colors.purple: Colors.grey),
      child: IconButton(
icon: Icon(icon),
color: Colors.white,
iconSize: 18.0,
onPressed: (){
if(enable){
  onpress();
}

},

      ),
    );
  }
}
