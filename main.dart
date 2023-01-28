



import 'dart:ffi';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home()
 )); 
class Home extends StatefulWidget {
  
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
var operatordiv=0;
var operatormul=0;
var operatordiff=0;
var operatorplus=0;
var operatorispressed=0;
var operator="";

var result;

var  input1="";
var buttoneq=0;
var answer = "0";
var answer2="0";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title :  Text('My Calculator'),
        
         
      
        backgroundColor: Colors.grey,
      ),
      
  body:Column(
   
children:<Row>[
  Row(children: <Widget>[
Container(
  
  
   child:Text (answer
   ,textAlign: TextAlign.center,

   style: TextStyle( fontSize: 20.0,
   
   color: Colors.grey[600]
   



   )),
  
  color:Color.fromARGB(77, 255, 255, 255),
  margin: EdgeInsets.fromLTRB(0, 0, 0, 270)

)


  ],

  ),
  
   Row(
    
   crossAxisAlignment:  CrossAxisAlignment.end,
   mainAxisAlignment: MainAxisAlignment.center,
    
    children:<Widget> [
      Expanded(
        
        
        child: 
 
        GestureDetector(
           onTap: (){
            setState(() {
              if (buttoneq==1)
              {buttoneq=0;
              answer2="";
              input1="";


              }
                answer=affichage("7", answer);
                if (operatorispressed==1)
              answer2+="7";

            });
           
          },
          child: Container(
           
          child: Text('7'),
        color: Colors.grey,
        
        padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 17 ),
        margin: EdgeInsets.all(6),
        
        
        ),
        )),Expanded(child: 
GestureDetector(
   onTap: (){
            setState(() {
               if (buttoneq==1)
              {buttoneq=0;
              answer2="";
              input1="";


              }
                if (answer=="0")
              answer="8";
              else
              answer+="8";
              if (operatorispressed==1)
              answer2+="8";
            });
           
          },
  child:   Container(
  
    child: Text('8'),
  
  color: Colors.grey,
  
  padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 17 )
  
  ,margin: EdgeInsets.all(6),
  
  
  
  ),
)),
Expanded(child:
GestureDetector(
   onTap: (){
            setState(() {
               if (buttoneq==1)
              {buttoneq=0;
              answer2="";
              input1="";


              }
                answer=affichage("9", answer);
              if (operatorispressed==1)
              answer2+="9";
            });
           
          },
  child:   Container(
  
    child: Text('9'),
  
    
  
  color: Colors.grey,
  
  padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 17 )
  
  ,margin: EdgeInsets.all(6),
  
  
  
  ),
) ),
Expanded(child: 
GestureDetector(
   onTap: (){
            setState(() {

              input1=answer;
              
              operatordiv=1;
              operatorispressed=1;
              answer+="/";
              operator="/";
            });
           
          },
  child:   Container(
  
    child: Text('/'),
  
  color: Colors.grey,
  
  padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 17 ) , 
  
  margin: EdgeInsets.all(6),
  
  ),
))






    ],

  ),
  Row(
    
   crossAxisAlignment:  CrossAxisAlignment.end,
   mainAxisAlignment: MainAxisAlignment.center,
    
    children:<Widget> [
      Expanded(
        
        
         child: GestureDetector(
           onTap: (){
            setState(() {
               if (buttoneq==1)
              {buttoneq=0;
              answer2="";
              input1="";


              }
              answer=affichage("4", answer);
              if (operatorispressed==1)
              answer2+="4";
            });
           
          },
           child: Container(
            child: Text('4'),
                 color: Colors.grey,
                 padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 17 ),
                 margin: EdgeInsets.all(6),
               
                 
                 ),
         ),
        ),Expanded(child: 
GestureDetector(
   onTap: (){
            setState(() {
               if (buttoneq==1)
              {buttoneq=0;
              answer2="";
              input1="";


              }
                 answer=affichage("5", answer);
              if (operatorispressed==1)
              answer2+="5";
            });
           
          },
  child:   Container(
  
    child: Text('5'),
  
  color: Colors.grey,
  
  padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 17 )
  
  ,margin: EdgeInsets.all(6),
  
  
  
  ),
)),
Expanded(child:
GestureDetector(
   onTap: (){
            setState(() {
               if (buttoneq==1)
              {buttoneq=0;
              answer2="";
              input1="";


              }
                 answer=affichage("6", answer);
              if (operatorispressed==1)
              answer2+="6";
            });
           
          },
  child:   Container(
  
    child: Text('6'),
  

    
  
  color: Colors.grey,
  
  padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 17 )
  
  ,margin: EdgeInsets.all(6),
  
  
  
  ),
) ),
Expanded(child: 
GestureDetector( onTap: (){
            setState(() {
              input1=answer;
              
              operatormul=1;
              operatorispressed=1;


              answer+="*";
              operator="*";
            });
           
          },
  child:   Container(
  
    
  
    child: Text('*'),
  
    
  
  color: Colors.grey,
  
  padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 17 ) , 
  
  margin: EdgeInsets.all(6),
  
  ),
))






    ],

  ),
  Row(
    
   crossAxisAlignment:  CrossAxisAlignment.end,
   mainAxisAlignment: MainAxisAlignment.center,
    
    children:<Widget> [
      Expanded(
        
        
        child: 
 
        GestureDetector(
          
           onTap: (){
            setState(() {
               if (buttoneq==1)
              {buttoneq=0;
              answer2="";
              input1="";


              }
               answer=affichage("1", answer);
              if (operatorispressed==1)
              answer2+="1";
            });
           
          },
          child: Container(
          child: Text('1'),
        color: Colors.grey,
        padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 17 ),
        margin: EdgeInsets.all(6),
        
        
        ),
        )),Expanded(child: 
GestureDetector(
   onTap: (){
            setState(() {
               if (buttoneq==1)
              {buttoneq=0;
              answer2="";
              input1="";


              }
                 answer=affichage("2", answer);
              if (operatorispressed==1)
              answer2+="2";
            });
           
          },
  child:   Container(
  

    child: Text('2'),

  color: Colors.grey,
  
  padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 17 )
  
  ,margin: EdgeInsets.all(6),
  
  
  
  ),
)),
Expanded(child:
GestureDetector(
   onTap: (){
            setState(() {
               if (buttoneq==1)
              {buttoneq=0;
              answer2="";
              input1="";


              }
                 answer=affichage("3", answer);
              
if (operatorispressed==1)
              answer2+="3";

            });
           
          },
  child:   Container(
  
    child: Text('3'),
  
    
  
  color: Colors.grey,
  
  padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 17 )
  
  ,margin: EdgeInsets.all(6),
  
  
  
  ),
) ),
Expanded(child: 
GestureDetector(
   onTap: (){
            setState(() {
              input1=answer;
              
              operatordiff=1;
              operatorispressed=1;
              answer+="-";
              operator="-";
            });
           
          },
  child:   Container(
  
    
  
    child: Text('-'),
  
  color: Colors.grey,
  
  padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 17 ) , 
  
  margin: EdgeInsets.all(6),
  
  ),
))






    ],

  ),
  
   Row(
    
   crossAxisAlignment:  CrossAxisAlignment.end,
   mainAxisAlignment: MainAxisAlignment.center,
    
    children:<Widget> [
      Expanded(
        
        
        child: 
 
        GestureDetector(
           onTap: (){
            setState(() {
               if (buttoneq==1)
              {buttoneq=0;
              answer2="";
              input1="";


              }
                 answer=affichage("0", answer);
              if (operatorispressed==1)
              answer2+="0";
            });
           
          },
          child: Container(
          child: Text('0'),
        color: Colors.grey,
        padding: EdgeInsets.symmetric(horizontal: 90.0,vertical: 17 ),
        margin: EdgeInsets.all(6),
        
        
        ),
        )),
GestureDetector(
   onTap: (){
            setState(() {
              input1="";
              answer2="";
              answer="0";
               operatordiv=0;
              operatormul=0;
              operatordiff=0;
              operatorplus=0;
              operatorispressed=0;
              operator="";
            });
           
          },
  child:   Container(
  
    child: Text('CLR'),
  
  color: Colors.grey,
  
  padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 17 )
  
  ,margin: EdgeInsets.all(6),
  
  
  
  ),
),

GestureDetector(
   onTap: (){
            setState(() {
              input1=answer;
              
              operatorplus=1;
              operatorispressed=1;
              answer+="+";
              
            });
           
          },
  child:   Container(

    child: Text('+'),
  
    
  
  color: Colors.grey,
  

  padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 17 )
  
  ,margin: EdgeInsets.fromLTRB(6, 6, 6, 6),
  
  
  
   ),
),







    ],

  ),
   Row(
    
   crossAxisAlignment:  CrossAxisAlignment.end,
   mainAxisAlignment: MainAxisAlignment.center,
    
    children:<Widget> [
      Expanded(
        
        
        child: 
        
 
        GestureDetector(
          onTap: () {
            setState(() {
              buttoneq=1;
              var operator1=0.0;
              var operator2=0.0;
               operator1 = double.parse(input1);
               operator2=double.parse(answer2);
             result=operations(operator,operator1,operator2
             );

                
                
                 
              
              

              
              
              
              answer=result.toString()
;              
             
              input1="";
              answer2="0";
              
              operatordiv=0;
              operatormul=0;
              operatordiff=0;
              operatorplus=0;
              


              
            });
            
            
            
            
            
            
          },
          child: Container(
          child: Text('='),
        color: Colors.grey,
        padding: EdgeInsets.symmetric(horizontal: 140.0,vertical: 17 ),
        margin: EdgeInsets.all(6),
        
        
        ),
        )),
GestureDetector(
   onTap: (){
            setState(() {
              answer+=".";
            });
           
          },
  child:   Container(
  
    
  
    child: Text('.'),
  
  
  
  color: Colors.grey,
  
  padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 17 )
  
  ,margin: EdgeInsets.fromLTRB(6, 5, 8, 6),
  
  
  
  ),
),










    ],

  ),
  
  
  
  
  
  ]
  
 
  ));
     



    
  }}



double operations(String operator,double a,double b) {
  switch (operator) {
    case '/':
      return a / b;
      break;
    case '*':
      return a * b;
      break;
    case '-':
      return a - b;
      break;
    case '+':
      return a + b;
      break;
    default:
      return 0;
  }
}
String affichage(String button,String answer)
{if( answer=="0")

{
answer=button;
;
}
else{answer+=button;
;} 
return answer;
  

}

