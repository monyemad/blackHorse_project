import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  String result = "Result: ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Calculator"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Calculator',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Enter your first number",
                ),
                keyboardType: TextInputType.number,
                controller: num1,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Enter your second number",
                ),
                keyboardType: TextInputType.number,
                controller: num2,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      num n1 = num.parse(num1.text);
                      num n2 = num.parse(num2.text);
                      result = "Result: ${n1 + n2}";
                    });
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Colors.deepPurpleAccent.shade100,
                  elevation: 8,
                  child: const Icon(Icons.add),
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      num n1 = num.parse(num1.text);
                      num n2 = num.parse(num2.text);
                      result = "Result: ${n1 - n2}";
                    });
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Colors.deepPurpleAccent.shade100,
                  elevation: 8,
                  child: const Icon(Icons.remove),
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      num n1 = num.parse(num1.text);
                      num n2 = num.parse(num2.text);
                      if (n2 != 0) {
                        result = "Result: ${n1 / n2}";
                      } else {
                        result = "Error: Division by zero";
                      }
                    });
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Colors.deepPurpleAccent.shade100,
                  elevation: 8,
                  child: const Icon(Icons.percent_rounded),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              result,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}