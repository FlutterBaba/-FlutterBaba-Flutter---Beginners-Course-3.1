import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String value = "";

  void _onChanged(value) {
    setState(() {
      this.value = "change = $value";
    });
  }

  void _onSubmitted(value) {
    setState(() {
      this.value = "Submitted = $value";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.show_chart),
        ],
        centerTitle: true,
        title: const Text("My App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(value),
            TextField(
              onChanged: _onChanged,
              onSubmitted: _onSubmitted,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.email),
                suffixIcon: const Icon(Icons.visibility),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
