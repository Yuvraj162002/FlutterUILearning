import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    var names = ["Ram", "Shyam", "Sita", "Gita", "Hari", "Krishna", "Radhika"];
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),

      /** Learning 1 ------------> Concept of using th Container widget...**/

      // body: Center(
      //   child: Container(
      //     width: 200,
      //     height: 200,
      //     color: Colors.limeAccent,
      //     child: Text("Hello Flutter Developers"),
      //   ),
      // ),

      /** Learning 2 ------------> Concept of using the Text and style widget...**/

      // body: Center(
      //   child: Text('Hello Flutter Developers UI Learning..', style: TextStyle(
      //     fontSize: 20,
      //     color: Colors.blue,
      //     fontWeight: FontWeight.bold,
      //     fontStyle: FontStyle.italic,
      //     decoration: TextDecoration.underline,
      //     decorationColor: Colors.red,
      //     decorationStyle: TextDecorationStyle.dashed,
      //   ),),
      // ),

      /** Learning 3 ------------> Concept of using the Button widget...
       * Three type buttons are there....
       * a). TextButton(normal button)
       * b). OutlinedButton(with border one)
       * c). ElevatedButton(with the shadow one)
       **/

      // body: Center(
      //   child: OutlinedButton(
      //     onPressed: () {
      //       print("Button clicked long");
      //     },
      //     onLongPress: () {
      //       print("Button long pressed");
      //     },
      //     style: OutlinedButton.styleFrom(backgroundColor: Colors.blue),
      //     child: Text("Elevated Button", style: TextStyle(color: Colors.white)),
      //   ),
      // ),


      /** Learning 4 ------------> Concept of Adding Images to the application...**/
      // body: Center(
      //     child: Container(
      //         width: 2000,
      //         height: 2000,
      //         child: Image.asset('assets/images/flutter_normal_logo.png'))),


      /** Learning 5 ------------> Concept of using the InkWell widget...**/

      // InkWell
      // body: InkWell(
      //   onLongPress: () {
      //     print("Press print... Container long pressed");
      //   },
      //   onTap: () {
      //     print("Press print... Container tapped");
      //   },
      //
      //   child: Center(
      //       child: Container(
      //           width: 200,
      //           height: 200,
      //           color: Colors.blue,
      //           child: InkWell(
      //               onLongPress: () {
      //                 print("Press print... Text field long pressed");
      //               },
      //               onTap: () {
      //                 print("Press print... Text field tapped");
      //               },
      //               child: Center(
      //                 child: Text('Text filed of this container',
      //                   style: TextStyle(color: Colors.black),),
      //               ))
      //       )
      //   ),
      // ),


      /** Learning 6 ------------> Concept of using the ScrollView widget...**/
      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.only(bottom: 11.0), // Adding padding to the column
      //           child: SingleChildScrollView(
      //            scrollDirection: Axis.horizontal ,
      //             child: Row(
      //               children: [
      //                 Container(
      //                   margin: EdgeInsets.only(right: 11),// Adding margin to the container
      //                   height: 200,
      //                   width: 200,
      //                   color: Colors.red,
      //                 ),
      //                 Container(
      //                   margin: EdgeInsets.only(right: 11),// Adding margin to the container
      //                   height: 200,
      //                   width: 200,
      //                   color: Colors.green,
      //                 ),
      //                 Container(
      //                   margin: EdgeInsets.only(right: 11),// Adding margin to the container
      //                   height: 200,
      //                   width: 200,
      //                   color: Colors.green,
      //                 ),
      //                 Container(
      //                   margin: EdgeInsets.only(right: 11),// Adding margin to the container
      //                   height: 200,
      //                   width: 200,
      //                   color: Colors.green,
      //                 ),
      //                 Container(
      //                   margin: EdgeInsets.only(right: 11),// Adding margin to the container
      //                   height: 200,
      //                   width: 200,
      //                   color: Colors.green,
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),// Adding margin to the container
      //           height: 200,
      //           color: Colors.green,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),// Adding margin to the container
      //           height: 100,
      //           color: Colors.blue,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),// Adding margin to the container
      //           height: 100,
      //           color: Colors.black,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),// Adding margin to the container
      //           height: 100,
      //           color: Colors.limeAccent,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),// Adding margin to the container
      //           height: 100,
      //           color: Colors.amberAccent,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),// Adding margin to the container
      //           height: 100,
      //           color: Colors.blueGrey,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),// Adding margin to the container
      //           height: 100,
      //           color: Colors.indigo,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),// Adding margin to the container
      //           height: 100,
      //           color: Colors.blue,
      //         ),
      //         Container(
      //           margin: EdgeInsets.only(bottom: 11),// Adding margin to the container
      //           height: 100,
      //           color: Colors.blue,
      //         ),
      //       ],
      //     ),
      //   ),
      // ),


      /** Learning 7 ------------> Concept of using the ListView widget...**/

        /** Normal ListView....
         
      body: ListView(
        reverse: true,
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: EdgeInsets.all(11), // Adding margin to the container
            child: Text('ListView Widget Example 1', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ),
          Container(
            margin: EdgeInsets.all(11), // Adding margin to the container
            child: Text('ListView Widget Example 2', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

          ),
          Container(
            margin: EdgeInsets.all(11), // Adding margin to the container
            child: Text('ListView Widget Example 3', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

          ),
          Container(
            margin: EdgeInsets.all(11), // Adding margin to the container
            child: Text('ListView Widget Example 4', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

          ),
          Container(
            margin: EdgeInsets.all(11), // Adding margin to the container
            child: Text('ListView Widget Example 5', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ),
        ],
      ),*/

      // ListView.builder ( Use for the large data set or dynamic data set...)
     
      /**body: ListView.builder(
        itemBuilder: (context, index) {
          return Text(names[index], style: TextStyle(fontSize: 21));
        },
        itemCount: names.length,// This is the length of the list)
        itemExtent: 100,// This is the height of each item in the list
      )**/
      
      // ListView.separated ( Use for the large data set or dynamic data set with separator between the items...)
      
     /** body: ListView.separated(itemBuilder: (context, index) {
        return Text(names[index], style: TextStyle(fontSize: 21));
      },
      itemCount: names.length,
        separatorBuilder: (context, index){
        return Divider(height: 4,thickness: 4,color: Colors.amber,);
        }
      ),**/

      /** Leaning 8 ------------> Concept of using the Add decoration to container widget...*/

      // body: Container(
      //   width: double.infinity,
      //   height: double.infinity,
      //   color: Colors.blue.shade50,
      //   child: Center(
      //     child: Container(
      //       width: 200,
      //       height: 200,
      //       decoration: BoxDecoration(
      //         color: Colors.red,
      //         borderRadius: BorderRadius.circular(10),
      //         // Give half the width and height to make it circular.
      //         border: Border.all(color: Colors.black, width: 2),
      //         boxShadow: [
      //           BoxShadow(
      //             color: Colors.black.withOpacity(0.5),
      //             spreadRadius: 2,
      //             blurRadius: 7,
      //             offset: Offset(0, 3), // changes position of shadow
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),

      /** Learning 9 ------------> Concept of using the Expanded widget...*/

      // body: Row(
      //   children: [
      //     Expanded(
      //       flex: 2,
      //       child: Container(
      //         width: 50,
      //         height: 100,
      //         color: Colors.red,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 3,
      //       child: Container(
      //         width: 50,
      //         height: 100,
      //         color: Colors.blue,
      //       ),
      //     ),
      //     Expanded(
      //       child: Container(
      //         width: 50,
      //         height: 100,
      //         color: Colors.green,
      //       ),
      //     ),
      //     Expanded(
      //       child: Container(
      //         width: 50,
      //         height: 100,
      //         color: Colors.black,
      //       ),
      //     ),
      //   ],
      // ),

      /** Learning 10 ------------> Concept of using the ListTile widget...*/

      body: ListView.separated(itemBuilder: (context, index){
        return ListTile(
          leading: Text('${index}'),
          title: Text(names[index]),
          trailing: Icon(Icons.add),
        );
      },
      itemCount: names.length, // This is the length of the list
      separatorBuilder: (context, index) {
        return Divider(height: 4, thickness: 4, color: Colors.amber,);
      }
      ),
    );
  }
}
