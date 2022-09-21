import 'package:flutter/material.dart';
import 'package:flutter_passing_data_bw_pages/next_page.dart';

//Class with stateful widgets
class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePage();
}

//class with state
class _HomePage extends State<HomePage>{

  //controller object to perform operations on textfield widget
  TextEditingController _nameContr = TextEditingController();
  TextEditingController _emailContr = TextEditingController();
  TextEditingController _phoneContr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //text field :: similar to edit text
                TextField(
                  controller: _nameContr,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter name',
                  ),

                ),
                //for creating margin between to widgets
                SizedBox(height: 20,),
                TextField(
                  controller: _emailContr,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter email',
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: _phoneContr,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter phone no.'
                  ),
                ),
                SizedBox(height: 20, ), //creating margin bwt two widgets
                SizedBox(
                  width: 300,
                  //Button widget
                  child: ElevatedButton(
                    style:  ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                        )
                    ),
                    //on pressed method to perform event on button press
                    onPressed: (){
                    //navigator to navigate user to the new page
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => NextPage(
                            _nameContr.text,
                            _emailContr.text,
                            _phoneContr.text)
                      )
                    ).whenComplete((){
                      //when navigation is done clearing the textfield using controllers
                      setState((){
                        _nameContr.clear();
                        _phoneContr.clear();
                        _emailContr.clear();
                      });
                    });
                  },
                    child: const Text(
                      "Next Page",
                      style: TextStyle(fontSize: 20),
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