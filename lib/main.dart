import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(TaskTwo());

class TaskTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'HNG Task 2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool enabled = false;
  String textToBeDisplayed = 'Your text goes here...';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(widget.title),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Expanded(child: Image.asset('images/hng.png')),
            SizedBox(height: 10),
            Expanded(
              child: Text('learn more at: https://internship.zuri.team'),
            ),
            Expanded(
              flex: 5,
              child: Text(
                textToBeDisplayed,
                style: TextStyle(
                  fontSize: 30.0,
                  color: enabled ? Colors.white : Colors.white.withOpacity(0.2),
                ),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  hintText: 'Enter a text to display'),
              onChanged: (value) {
                textToBeDisplayed = value;
              },
            ),
            Container(
              height: 70.0,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.tealAccent[200],
                    ),
                    foregroundColor: MaterialStateProperty.all(
                      Colors.grey[700],
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (textToBeDisplayed == 'Your text goes here...') return;
                      enabled = true;
                    });
                  },
                  child: Text(
                    'Display Text',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
