// StatefulWidgetは状態を保つことができるクラス
import 'package:flutter/material.dart';

class StatePage extends StatefulWidget {
  const StatePage({Key? key}) : super(key: key);

  @override
  State<StatePage> createState() => _StatePageState();
}

class _StatePageState extends State<StatePage> {
  int count = 0;
  String title = "こんにちわ世界";

  void increment() {
    setState(() {
      count++;
    });
  }

  void change() {
    setState(() {
      title = "おはよう世界";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('状態を持っているクラス'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          increment();
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: TextStyle(fontSize: 30)),
          Text('数字: $count', style: TextStyle(fontSize: 30)),
          ElevatedButton(
              onPressed: () {
                change();
              },
              child: const Text('文字を上書き')),
        ],
      )),
    );
  }
}


// StatelessWidgetの場合
// import 'package:flutter/material.dart';

// class StatePage extends StatelessWidget {
//   const StatePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     int count = 0;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('状態をもてないクラス'),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           count++;
//         },
//         child: const Icon(Icons.add),
//       ),
//       body: Center(
//           child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text('数字: $count', style: TextStyle(fontSize: 30)),
//         ],
//       )),
//     );
//   }
// }
