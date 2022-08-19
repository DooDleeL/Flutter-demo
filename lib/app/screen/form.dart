import 'package:flutter/material.dart';
import 'package:primeiro_app/app/screen/home_screen.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<FormScreen> createState() => _FormState();
}

class _FormState extends State<FormScreen> {
  final myController = TextEditingController();
  List<String> inputList = [];

  void _addList() {
    setState(() {
      inputList.add(myController.text);
    });
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Menu',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic)),
            ),
            ListTile(
              title: const Text('Home Screen'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomeScreen(title: "Home")),
                );
              },
            ),
            ListTile(
              title: const Text('Formulário'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FormScreen(title: "Formulário")),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Retorna o valor de TextField'),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
            TextField(
              textAlign: TextAlign.center,
              controller: myController,
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.blue,
              ),
              onPressed: () {
                _addList();
              },
              child: Text('ADICIONAR'),
            ),
            Container(
                height: 300.0,
                child: ListView.builder(
                  itemCount: inputList.length,
                  itemBuilder: (context, index) {
                    return Text(inputList[index]);
                  },
                ))
          ])),
    );
  }
}
