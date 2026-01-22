import 'package:flutter/material.dart';
import 'package:flutter_application_1/Methods/exercise.dart';

late Customer customer = Customer("Saleh", "saleh@example.com", []);
late Customer customer2 = Customer("Mohammed", "Mohammed@example.com", []);
String CustomerBook1(){
  customer.AddBook(Book(name: "Learning Flutter", ISBN: "222", edition: 1, author: Author("Mohammed", "Mohammed@example.com")));
  return customer.bookList[0].toString();
}
String CustomerBook2(){
  customer2.AddBook(Book(name: "Learning Dart", ISBN: "111", edition: 1, author: Author("Saleh", "saleh@example.com")));
  return customer2.bookList[0].toString();
}
class HomeScreen extends StatelessWidget {
  
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color.fromARGB(147, 0, 132, 255),
        title: Text("Customer Information"),
        actions: [Icon(Icons.phone_android),
        FilledButton(onPressed: (){}, child: Text("Log Out")),
        ],

      ),
      body: Row(
      children:[ Column(
        children: [
          
              Padding(padding:  EdgeInsetsGeometry.all(20),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(customer.getName()),
                    Icon( Icons.pages_sharp),
                  ],
                )
              ),
              ),
              Padding(padding:  EdgeInsetsGeometry.all(20),
              child: Container(
                height: 100,
                width: 200,
                color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(customer.getEmail()),
                    Icon( Icons.email),
                  ],
                )
              ),
              ),
              Padding(padding:  EdgeInsetsGeometry.all(20),
              child:
              Container(
                height: 200,
                width: 200,
                color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(CustomerBook1()),
                    Icon( Icons.person),
                    
                  ],
                
                ),
              ),
              )
            ],
      ),
      Column(
        children: [
          
              Padding(padding:  EdgeInsetsGeometry.all(20),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(customer2.getName()),
                    Icon( Icons.pages_sharp),
                  ],
                )
              ),
              ),
              Padding(padding:  EdgeInsetsGeometry.all(20),
              child: Container(
                height: 100,
                width: 200,
                color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(customer2.getEmail()),
                    Icon( Icons.email),
                  ],
                )
              ),
              ),
              Padding(padding:  EdgeInsetsGeometry.all(20),
              child:
              Container(
                height: 200,
                width: 200,
                color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(CustomerBook2()),
                    Icon( Icons.person),
                    
                  ],
                
                ),
              ),
              )
            ],
                
          
         
          
         
        
      ),
      ],
      ),
    );
  }
}