import 'package:flutter/material.dart';
import 'package:todo/views/create_todo_view.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  get indicatorColor => null;

  get completionLevel => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: Container(
              child: Column(
                children:  [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 50, 20, 0),
                    // color: Colors.red,
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: 65,
                      width: 65,
                      child: InkWell(
                        onTap: ()=> Navigator.of(context).pop(),
                        child: Card(
                          color: Color.fromRGBO(3, 25, 85, 1),
                          shape: CircleBorder(
                            side: BorderSide(width: 1, color: Colors.white)
                          ),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                  CircularPercentIndicator(
                    radius: 120,
                    progressColor: Colors.pink,
                    backgroundColor: Color.fromRGBO(59, 150, 152, 1),
                    animation: false,
                    lineWidth: 2.5,
                    percent: 0.4,
                    center: const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/user.jpg'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: const Text( 'McGrey \nQuainoo',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(70, 30, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RowWithIconAndText(
                          icon: Icons.bookmark_border_outlined, text: 'Template'),
                        RowWithIconAndText(
                          icon: Icons.grid_view, text: 'Categories'),
                        RowWithIconAndText(
                          icon: Icons.pie_chart_outline, text: 'Analytics'),
                        RowWithIconAndText(
                          icon: Icons.settings_outlined,text: 'Settings')
                      ],
                    ),
                  ),
                 Image.asset('assets/images/graph.png')
                ],
              ),
              color: Color.fromRGBO(3, 25, 85, 1))),
      backgroundColor: Color.fromRGBO(249, 250, 255, 1),
      appBar: AppBar(
        // leading: const IconButton(
        //     onPressed: null,
        //     icon: Icon(
        //       Icons.menu,
        //       size: 26,
        //     )),
        elevation: 0,
        backgroundColor: Color.fromRGBO(249, 250, 255, 1),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Color.fromRGBO(171, 158, 158, 1)),
        actions: [
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.search_outlined,
                size: 26,
              ),
              padding: const EdgeInsets.only(right: 15.0)),
          IconButton(
              onPressed: null,
              icon: Icon(Icons.notifications_outlined, size: 26))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(38, 53, 0, 0),
              child: Text(
                'What\'s up, McGrey!',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(34, 42, 82, 1)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(38, 28, 0, 0),
              child: Text(
                "CATEGORIES",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(113, 113, 113, 1)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.48,
                  height: MediaQuery.of(context).size.height * 0.20,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(27, 18, 0, 10),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      elevation: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 20, 0, 5),
                            child: Text(
                              '40 tasks',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(161, 167, 200, 1)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                            child: Text(
                              'Business',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(45, 43, 43, 1),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
                            child: LinearPercentIndicator(
                              width: MediaQuery.of(context).size.width * 0.30,
                              lineHeight: 3.5,
                              percent: 0.60,
                              progressColor: Color.fromRGBO(213, 37, 166, 1),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.50,
                  height: MediaQuery.of(context).size.height * 0.20,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 18, 20, 5),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      elevation: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
                            child: Text(
                              '18 tasks',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(161, 167, 200, 1)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 5, 0, 10),
                            child: Text(
                              'Personal',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color.fromRGBO(45, 43, 43, 1),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
                            child: LinearPercentIndicator(
                              width: MediaQuery.of(context).size.width * 0.30,
                              lineHeight: 3.5,
                              percent: 0.40,
                              progressColor: Color.fromRGBO(35, 128, 195, 1),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(37, 50, 20, 15),
              child: Text(
                "TODAY'S TASKS",
                style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(161, 167, 200, 1)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(37, 0, 18, 0),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height,
                ),
                child: ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      return Dismissible(
                        key: Key(index.toString()),
                        background: const Material(
                          color: Colors.red,
                          child: Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                        ),
                        secondaryBackground: const Material(
                          color: Colors.green,
                          child: Icon(
                            Icons.undo_rounded,
                            color: Colors.white,
                          ),
                        ),

                        // onDismissed: (){},
                        child: Card(
                          elevation: 0,
                          // color: Colors.blue[100],
                          child: Row(
                            children: [
                              Radio(
                                value: '',
                                groupValue: '',
                                onChanged: null,
                                activeColor: Colors.pink,
                              ),
                              Text(
                                'Have lunch with myself',
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(height: 5),
                    itemCount: 15),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // elevation: ,
        backgroundColor: const Color.fromRGBO(35, 128, 195, 1),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
                builder: (BuildContext context) => CreateTodoView()),
          );
        },
        child: Icon(
          Icons.add,
          size: 28,
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
      ),
    );
  }
}

class RowWithIconAndText extends StatelessWidget {
  final IconData? icon;
  final String?  text;

  const RowWithIconAndText({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
              children: [
              Icon(icon,
                color: Colors.white,
                size: 30,),
              SizedBox(
                width: 25,
              ),
              Text(text.toString(),
                style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700
                ),),
               ],
              ),
    );
  }
}