// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'model.dart';
//
// class NextPage extends StatelessWidget {
//   final List<Item> selectedItems;
//
//   NextPage({required this.selectedItems});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Selected Items'),
//       ),
//       body: ListView.builder(
//         itemCount: selectedItems.length,
//         itemBuilder: (context, index) {
//           final item = selectedItems[index];
//           return ListTile(
//             title: Text(item.name),
//           );
//         },
//       ),
//     );
//   }
// }
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'model.dart';
//
// class NextPage extends StatelessWidget {
//   final List<Item> selectedItems;
//
//   NextPage({required this.selectedItems});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Selected Items'),
//       ),
//       body: ListView.builder(
//         itemCount: selectedItems.length,
//         itemBuilder: (context, index) {
//           final item = selectedItems[index];
//           return ListTile(
//             title: Text(item.name),
//             subtitle: Text(item.subItems.join(", ")),
//           );
//         },
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
//
// import 'model.dart';
//
// class NextPage extends StatelessWidget {
//   final List<Item> selectedItems;
//
//   NextPage({required this.selectedItems});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Selected Items'),
//       ),
//       body: ListView.builder(
//         itemCount: selectedItems.length,
//         itemBuilder: (context, index) {
//           final item = selectedItems[index];
//           return Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               ListTile(
//                 title: Text(item.name),
//               ),
//               ListView.builder(
//                 shrinkWrap: true,
//                 itemCount: item.subItems.length,
//                 itemBuilder: (context, subIndex) {
//                   final subItem = item.subItems[subIndex];
//                   return ListTile(
//                     title: Text(subItem),
//                   );
//                 },
//               ),
//               Divider(),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model.dart';

class NextPage extends StatelessWidget {
  final List<Item> selectedItems;

  NextPage({required this.selectedItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selected Items'),
      ),
      body: ListView.builder(
        itemCount: selectedItems.length,
        itemBuilder: (context, index) {
          final item = selectedItems[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text(item.name),
                subtitle: Text(item.selectedSubItem ?? 'No subitem selected'),
              ),
              Divider(),
            ],
          );
        },
      ),
    );
  }
}