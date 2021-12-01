
import 'package:flutter/material.dart';
import 'package:todo/views/create_todo_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 247, 247, 2),
      appBar: AppBar( 
        leading: const IconButton(onPressed: null, icon: Icon(Icons.menu, size: 26
        ,)),
        elevation: 0,
        backgroundColor: Color.fromRGBO(250, 247, 247, 2),
        centerTitle: true,
        actions: [
          IconButton(onPressed: null, icon: Icon(Icons.search_outlined,size: 26,),
          padding: const EdgeInsets.only(right: 15.0)
          ),
          IconButton(onPressed: null, icon: Icon(Icons.notifications_outlined,size: 26)
          )] ,
      
    ),
    body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(38, 53, 0, 0),
            child: Text('What\'s up, McGrey!', 
            style: TextStyle(
              fontSize: 30, 
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(19, 19, 19, 2) ),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(38, 28, 0, 0),
            child: Text("CATEGORIES",
            textAlign: TextAlign.left,
            style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(113, 113, 113, 2)
            ),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
              width: MediaQuery.of(context).size.width *0.45,
              height: MediaQuery.of(context).size.height*0.25,
              child: Padding(
              padding: const EdgeInsets.fromLTRB(37, 18, 18, 18),
              child: Card(
                elevation: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0) ,
                    child: Text('40 tasks',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(161, 167,200 , 1)
                    ),
                    ),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(10.0) ,
                    child: Text('Business'),
                    )
                ],
                  ),
                ),
               ),
              ),
              SizedBox(
              width: MediaQuery.of(context).size.width *0.45,
              height: MediaQuery.of(context).size.height*0.25,
              child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 18, 37, 18),
              child: Card(
                elevation: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0) ,
                    child: Text('40 tasks',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(161, 167,200 , 1)
                    ),
                    ),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(10.0) ,
                    child: Text('Business'),)
                ],
              ),
              ),
              ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 37),
            child: Text(
              "TODAY'S TASKS",
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(161, 167, 200, 1)
              ),
            ),
          ),
          Dismissible(
            key: ValueKey('Delete'), 
            background: Container(
              child: Icon(Icons.delete),
          ),
            secondaryBackground: Container(
              child: Icon(Icons.undo_rounded),
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height,
                ),
              child: ListView.separated(
                itemBuilder: (BuildContext context, int index){
                  return Card(
                    elevation: 0,
                    // color: Colors.blue[100],
                    child: Row(
                      children: [
                        Radio(
                          value: '', 
                          groupValue: '', 
                          onChanged: null,
                          activeColor: Colors.pink,),
                        Text('Have lunch with myself',
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontSize: 12,
                          fontWeight: FontWeight.w700
                        ),),
                      ],
                    ),
                  );
                }, 
                separatorBuilder: (BuildContext context, int index)=> const SizedBox(height: 5), 
                itemCount: 2),
            ),
          )
        ],
      ),    
    ),
    floatingActionButton: FloatingActionButton(
      // elevation: ,
      backgroundColor: const Color.fromRGBO(35, 128, 195, 1),
      onPressed: (){
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context)=>CreateTodoView()
          ),
        );
      },
      child: Icon(Icons.add,
        size: 28, color: Color.fromRGBO(255, 255, 255, 1),),
      ),
    );
  }
}