// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:todo/views/create_todo_view.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomeViewDarkmode extends StatelessWidget {
  const HomeViewDarkmode({Key? key}) : super(key: key);

  get indicatorColor => null;

  get completionLevel => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(52, 78, 162, 1),
      appBar: AppBar(
        leading: const IconButton(
            onPressed: null,
            icon: Icon(
              Icons.menu,
              size: 26,
            )),
        elevation: 0,
        backgroundColor: Color.fromRGBO(52, 78, 162, 1),
        centerTitle: true,
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
                    color: Colors.white),
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
                    color: Colors.white),
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
                      color: Color.fromRGBO(3, 25, 85, 1),
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
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                            child: Text(
                              'Business',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
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
                      color: Color.fromRGBO(3, 25, 85, 1),
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
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 5, 0, 10),
                            child: Text(
                              'Personal',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
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
                    color: Colors.white),
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
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height*0.10,
                          child: Card(
                            shape:  RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                            ),
                            elevation: 0,
                            color: Color.fromRGBO(3, 25, 85, 1),
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: MaterialStateProperty.all(
                                    Colors.white
                                  ),
                                  value: '',
                                  groupValue: '',
                                  onChanged: null,
                                  activeColor: Colors.pink,
                                ),
                                Text(
                                  'Have lunch with myself',
                                  style: TextStyle(
                                    color: Colors.white,
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(height: 3),
                    itemCount: 5),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // elevation: ,
        backgroundColor: const Color.fromRGBO(251, 0, 150, 1),
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
