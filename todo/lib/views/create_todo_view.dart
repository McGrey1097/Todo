import 'package:flutter/material.dart';
import 'package:todo/views/Home_View_Darkmode.dart';

class CreateTodoView extends StatelessWidget {
  const CreateTodoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 18),
                padding: const EdgeInsets.fromLTRB(5, 20, 5, 10),
                // color: Colors.red,
                alignment: Alignment.topRight,

                // margin: EdgeInsets.fromLTRB(350, 20, 18, 20),
                // width: 100,
                // height: 85,
                child: SizedBox(
                  width: 75,
                  height: 75,
                  child: Card(
                    elevation: 0,
                    shape: CircleBorder(
                        side: BorderSide(color: Colors.grey, width: 2)),
                    color: Color.fromRGBO(255, 255, 255, 1),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.close,
                        size: 26,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(38, 120, 28, 20),
                child: const TextField(
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                    cursorHeight: 20,
                    decoration: InputDecoration(
                      // showCursor: true,

                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.grey, width: 1),
                      ),
                      hintText: 'Enter new todo',
                      hintStyle: TextStyle(
                          fontSize: 22,
                          color: Color.fromRGBO(148, 156, 150, 1)),
                      // prefixIcon: Icon(Icons.person_pin_circle)
                    )),
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(27, 30, 0, 20),
                    child: SizedBox(
                      width: 130,
                      height: 80,
                      child: InkWell(
                        onTap: () {},
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              side: BorderSide(
                                  width: 3,
                                  color: Color.fromRGBO(247, 247, 247, 1))),

                          // color: Colors.blue[100],
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 16.0),
                                child: Icon(
                                  Icons.calendar_today,
                                  size: 25,
                                  color: Color.fromRGBO(140, 140, 140, 1),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  'Today',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(140, 140, 140, 1),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: SizedBox(
                      width: 80,
                      height: 80,
                      child: InkWell(
                        onTap: () {},
                        child: Card(
                          shape: const CircleBorder(
                              side: BorderSide(
                            color: Color.fromRGBO(247, 247, 247, 1),
                            width: 2,
                          )),
                          color: Colors.white,
                          child: Icon(
                            Icons.radio_button_checked,
                            size: 35,
                            color: Color.fromRGBO(35, 128, 195, 1),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.create_new_folder_outlined,
                          size: 30,
                          color: Color.fromRGBO(140, 140, 140, 1),
                        )),
                    IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.flag_outlined,
                          size: 30,
                          color: Color.fromRGBO(140, 140, 140, 1),
                        )),
                    IconButton(
                        onPressed: (){
                        Navigator.of(context).push(
                        MaterialPageRoute(
                      builder: (BuildContext context) => HomeViewDarkmode()),
                           );},
                        icon: Icon(
                          Icons.dark_mode_outlined,
                          size: 30,
                          color: Color.fromRGBO(140, 140, 140, 1),
                        )),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.fromLTRB(0, 120, 20, 50),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.35,
                  height: MediaQuery.of(context).size.height * 0.08,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: ElevatedButton(
                      onPressed: null,
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(35, 128, 195, 1)),
                      ),
                      child: Row(
                        children: [
                          Text(
                            'New Task',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          Icon(
                            Icons.expand_less_outlined,
                            color: Colors.white,
                            size: 25,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
