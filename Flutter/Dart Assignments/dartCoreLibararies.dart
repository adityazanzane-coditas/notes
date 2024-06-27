//dart:core
// void main() {
//   print('All dart core libraries');
//   var list = [1, 2, 3];
//   list.forEach(print);
// }

//dart:async
// Future<void> fetchData() async {
//   await Future.delayed(Duration(seconds: 1));
//   print('Data fetch');
// }

// void main() {
//   fetchData();
//   print('checking both');
// }

//dart math
// import 'dart:math';

// void main() {
//   print(sqrt(8));
//   print(sin(pi / 4));
//   print(Random().nextInt(10));
// }

//dart convert
// import 'dart:convert';

// void main() {
//   String jsonString = '{"name": "Aditya", "age":"21"}';
//   Map<String, dynamic> data = jsonDecode(jsonString);
//   print(data);
// }

//dart:io print all files in current directory

// import 'dart:io';

// void main() async {
//   Directory currentDir = Directory.current;
//   List<FileSystemEntity> contents = await currentDir.list().toList();
//   contents.forEach(print);
// }

//dart:html

// import 'dart:html';
// <!DOCTYPE html>
// <html>
//   <head>
//     <title>Dart HTML Example</title>
//     <script defer src="main.dart.js"></script>
//   </head>
//   <body>
//     <button id="myButton">Click me</button>
//   </body>
// </html>

// void main() {
//   final button = querySelector('#myButton') as ButtonElement;
//   button.onClick.listen((_) {
//     window.alert('Button clicked!');
//   });
// }

