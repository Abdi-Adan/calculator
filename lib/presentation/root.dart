import 'package:calculator/application/store.dart';
import 'package:flutter/material.dart';

class MyCalculatorApp extends StatefulWidget {
  const MyCalculatorApp({super.key});

  @override
  State<MyCalculatorApp> createState() => _MyCalculatorAppState();
}

class _MyCalculatorAppState extends State<MyCalculatorApp> {
  final TextEditingController inputController = TextEditingController();

  @override
  void initState() {
    super.initState();
    inputController.text = arithmeticKeyboardInput.value;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                child: Column(
                  children: [
                    //History
                    Container(
                      width: double.infinity,
                      alignment: Alignment.centerLeft,
                      child: const Column(
                        children: [
                          Text('history last item'),
                          Text('result'),
                        ],
                      ),
                    ),
                    //Input
                    Container(
                      width: double.infinity,
                      child: TextFormField(
                        controller: inputController,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    KeyboardRow(),
                    KeyboardRow(),
                    KeyboardRow(),
                    KeyboardRow(),
                    KeyboardRow(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KeyboardRow extends StatelessWidget {
  const KeyboardRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        KeyboardKey(title: 'AC', ontapCallBack: () {}),
        KeyboardKey(
          title: '+/-',
          ontapCallBack: () {},
        ),
        KeyboardKey(
          title: '%',
          ontapCallBack: () {},
        ),
        KeyboardKey(
          title: '/',
          ontapCallBack: () {},
        ),
      ],
    );
  }
}

class KeyboardKey extends StatelessWidget {
  final Function ontapCallBack;
  final String title;

  const KeyboardKey({super.key, required this.ontapCallBack, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: ontapCallBack(),
          child: CircleAvatar(child: Text(title)),
        ),
      ],
    );
  }
}

String handleInput({required String firstOperand, required String secondOperand}) {
  return '0';
}
