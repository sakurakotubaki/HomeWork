// StatefulWidgetから、変数とロジックを分離して、外部からコードを
// 呼び出して使えるようにした機能を使うためのクラス
class Counter {
  // カウント数を保持する変数。_がついているので外部からアクセスできない
  int _count = 0;
  // getterを定義して、外部から_countにアクセスできるようにすることができる
  int get count => _count;
  // カウント数を増やすメソッド
  void increment() {
    // ++演算子でカウント数を増やす
    _count++;
  }
}