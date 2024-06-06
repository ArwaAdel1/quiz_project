import 'dart:core';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
class Q1 extends StatefulWidget {
   Q1({super.key});
  @override
  State<Q1> createState() => _Q1State();
}
class _Q1State extends State<Q1> {
  String? selectedOption1;
 String? selectedOption2;
 String? selectedOption3;
 String? selectedOption4;
 String? selectedOption5;
 bool allQuestiosAnswered()
 {
   return selectedOption1!=null&&
   selectedOption2!=null&&selectedOption3!=null
       &&selectedOption4!=null&&selectedOption5!=null;
 }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              Text(
                '1) What is a correct syntax to output "Hello World" in C++?',
                style: TextStyle(
                  fontSize:20,
                  fontWeight: FontWeight.bold,
                ),

              ),
              const SizedBox(height: 10,),
              RadioListTile(
                 title: Text('cout<<Hello World;'),
                value: 'cout<<Hello World;',
                groupValue: selectedOption1,

                onChanged: (value)
                  {

                    setState(() {
                      selectedOption1=value.toString();
                    });
                  },
              ),

              RadioListTile(
                title: Text('print(Hello World);'),
                value: '2',
                groupValue: selectedOption1,
                onChanged: (value)
                {
                  setState(() {
                    selectedOption1=value.toString();

                  });
                },
              ),
              RadioListTile(
                title: const Text('Console.WriteLine(Hello World);'),
                value: '3',
                groupValue: selectedOption1,
                onChanged: (value)
                {
                  setState(() {
                    selectedOption1=value.toString();
                  });
                },
              ),
              Text(
                '2) How do you insert COMMENTS in C++ code?',
                style: TextStyle(
                  fontSize:20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10,),
              RadioListTile(
                title: Text('# This is a comment'),
                value: '# comment',
                groupValue: selectedOption2,
                onChanged: (value)
                {
                  setState(() {
                    selectedOption2=value.toString();
                  });
                },
              ),
              RadioListTile(
                title: Text('// This is a comment'),
                value: '// This is a comment',
                groupValue: selectedOption2,
                onChanged: (value)
                {
                  setState(() {
                    selectedOption2=value.toString();
                  });
                },
              ),
              RadioListTile(
                title: const Text('/* This is a comment'),
                value: '/*comment',
                groupValue: selectedOption2,
                onChanged: (value)
                {
                  setState(() {
                    selectedOption2=value.toString();
                  });
                },
              ),
              const SizedBox(height: 10,),
              Text(
                '3) Which data type is used to create a variable that should store text?',
                style: TextStyle(
                  fontSize:20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              RadioListTile(
                title: Text('mystring'),
                value: 'str',
                groupValue: selectedOption3,
                onChanged: (value)
                {
                  setState(() {
                    selectedOption3=value.toString();
                  });
                },
              ),
              RadioListTile(
                title: Text('String'),
                value: 'String',
                groupValue: selectedOption3,
                onChanged: (value)
                {
                  setState(() {
                    selectedOption3=value.toString();
                  });
                },
              ),
              RadioListTile(
                title: const Text('string'),
                value: 'string',
                groupValue: selectedOption3,
                onChanged: (value)
                {
                  setState(() {
                    selectedOption3=value.toString();
                  });
                },
              ),
              const SizedBox(height: 10,),
              Text(
                '4) How do you create a variable with the numeric value 5?',
                style: TextStyle(
                  fontSize:20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              RadioListTile(
                title: Text('num x=5;'),
                value: 'num',
                groupValue: selectedOption4,
                onChanged: (value)
                {
                  setState(() {
                    selectedOption4=value.toString();
                  });
                },
              ),
              RadioListTile(
                title: Text('int x=5;'),
                value: 'int x=5;',
                groupValue:selectedOption4,
                onChanged: (value)
                {
                  setState(() {
                    selectedOption4=value.toString();
                  });
                },
              ),
              RadioListTile(
                title: const Text('x=5;'),
                value: 'x=5',
                groupValue: selectedOption4,
                onChanged: (value)
                {
                  setState(() {
                    selectedOption4=value.toString();
                  });
                },
              ),
              const SizedBox(height: 10,),
              Text(
                '5) The value of a string variable can be surrounded by single quotes?',
                style: TextStyle(
                  fontSize:20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              RadioListTile(
                title: Text('true'),
                value: 'true',
                groupValue: selectedOption5,
                onChanged: (value)
                {
                  setState(() {
                    selectedOption5=value.toString();
                  });
                },
              ),
              RadioListTile(
                title: Text('false'),
                value: 'false',
                groupValue: selectedOption5,
                onChanged: (value)
                {
                  setState(() {
                    selectedOption5=value.toString();

                  });
                },

              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 138,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary:Color(0xffc5e1a5),
                    ),
                    onPressed: ()
                    {
                      int correctAnswers=0;
                      if(selectedOption1=='cout<<Hello World;')
                        correctAnswers++;
                      if(selectedOption2=='// This is a comment')
                        correctAnswers++;
                      if(selectedOption3=='string')
                        correctAnswers++;
                      if(selectedOption4=='int x=5;')
                        correctAnswers++;
                      if(selectedOption5=='true')
                        correctAnswers++;
                      if(allQuestiosAnswered())
                        {
                         showDialog(context: context,
                             builder: (context)=>
                                 AlertDialog(
                                   title: Text('Quiz Result',
                                     style: TextStyle(
                                       fontSize: 30.0,
                                       fontWeight: FontWeight.w500,
                                     ),
                                   ),
                                   content: Text(
                                     'You got ${correctAnswers}/5',
                                     style: TextStyle(
                                       fontSize: 20.0,
                                       color: Colors.black.withOpacity(0.3),
                                     ),
                                   ),
                                   actions: [
                                     ElevatedButton(
                                   onPressed: ()
                                    {
                                Navigator.pop(context);
                                  setState(() {
                                 selectedOption1=null;
                                selectedOption2=null;
                                selectedOption3=null;
                               selectedOption4=null;
                               selectedOption5=null;
                             });
                           },
                                           child: Text('Close'),
                                         ),
                                   ],
                                 )

                         );
                        }
                      if(!allQuestiosAnswered())
                        {
                          showDialog(context: context,
                              builder: (context)=>AlertDialog(
                                title: Text('Warning!!',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.red,
                                  ),
                                ),
                                content: Text('Please answer all Questions before submitting',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black.withOpacity(0.3),
                                  ),
                                ),
                                actions: [
                                  ElevatedButton(onPressed: ()
                                  {
                                    Navigator.pop(context);
                                  },
                                      child: Text('OK')),
                                ],
                              ));

                        }
                    },
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



