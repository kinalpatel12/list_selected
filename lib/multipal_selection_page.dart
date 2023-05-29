// import 'package:flutter/material.dart';
//
// import 'model.dart';
// import 'next_page.dart';
//
// class MultipleSelectionPage extends StatefulWidget {
//   @override
//   _MultipleSelectionPageState createState() => _MultipleSelectionPageState();
// }
//
// class _MultipleSelectionPageState extends State<MultipleSelectionPage> {
//   List<Item> yourDataList = [
//     Item(id: 1, name: 'Item 1'),
//     Item(id: 2, name: 'Item 2'),
//     Item(id: 3, name: 'Item 3'),
//     Item(id: 4, name: 'Item 4'),
//     Item(id: 5, name: 'Item 5'),
//   ];
//
//   List<Item> _selectedItems = [];
//
//   void _toggleItemSelection(Item item) {
//     setState(() {
//       if (_selectedItems.contains(item)) {
//         _selectedItems.remove(item);
//       } else {
//         _selectedItems.add(item);
//       }
//     });
//   }
//
//   void _navigateToNextPage() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => NextPage(selectedItems: _selectedItems),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Multiple Selection'),
//       ),
//       body: ListView.builder(
//         itemCount: yourDataList.length,
//         itemBuilder: (context, index) {
//           final item = yourDataList[index];
//           final isSelected = _selectedItems.contains(item);
//           return ListTile(
//             title: Text(item.name),
//             onTap: () => _toggleItemSelection(item),
//             trailing: Icon(
//               isSelected ? Icons.check_box : Icons.check_box_outline_blank,
//             ),
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _navigateToNextPage,
//         child: Icon(Icons.navigate_next),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// import 'model.dart';
// import 'next_page.dart';
//
//
// class MultipleSelectionPage extends StatefulWidget {
//   @override
//   _MultipleSelectionPageState createState() => _MultipleSelectionPageState();
// }
//
// class _MultipleSelectionPageState extends State<MultipleSelectionPage> {
//   List<Item> yourDataList = [
//     Item(
//       id: 1,
//       name: 'Item 1',
//       subItems: ['Subitem 1', 'Subitem 2', 'Subitem 3'],
//     ),
//     Item(
//       id: 2,
//       name: 'Item 2',
//       subItems: ['Subitem 4', 'Subitem 5'],
//     ),
//     Item(
//       id: 3,
//       name: 'Item 3',
//       subItems: ['Subitem 6', 'Subitem 7', 'Subitem 8'],
//     ),
//   ];
//
//   List<Item> _selectedItems = [];
//
//   void _toggleItemSelection(Item item) {
//     setState(() {
//       if (_selectedItems.contains(item)) {
//         _selectedItems.remove(item);
//       } else {
//         _selectedItems.add(item);
//       }
//     });
//   }
//
//   void _navigateToNextPage() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => NextPage(selectedItems: _selectedItems),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Multiple Selection'),
//       ),
//       body: ListView.builder(
//         itemCount: yourDataList.length,
//         itemBuilder: (context, index) {
//           final item = yourDataList[index];
//           final isSelected = _selectedItems.contains(item);
//           return ListTile(
//             title: Text(item.name),
//             subtitle: Text(item.subItems.join(", ")),
//             onTap: () => _toggleItemSelection(item),
//             trailing: Icon(
//               isSelected ? Icons.check_box : Icons.check_box_outline_blank,
//             ),
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _navigateToNextPage,
//         child: Icon(Icons.navigate_next),
//       ),
//     );
//   }
// }
//
//
//
// // void main() {
// //   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Multiple Selection Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MultipleSelectionPage(),
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// import 'model.dart';
// import 'next_page.dart';
//
//
//
//
//
// class MultipleSelectionPage extends StatefulWidget {
//   @override
//   _MultipleSelectionPageState createState() => _MultipleSelectionPageState();
// }
//
// class _MultipleSelectionPageState extends State<MultipleSelectionPage> {
//   List<Item> yourDataList = [
//     Item(
//       id: 1,
//       name: 'Item 1',
//       subItems: ['Subitem 1', 'Subitem 2', 'Subitem 3'],
//     ),
//     Item(
//       id: 2,
//       name: 'Item 2',
//       subItems: ['Subitem 4', 'Subitem 5'],
//     ),
//     Item(
//       id: 3,
//       name: 'Item 3',
//       subItems: ['Subitem 6', 'Subitem 7', 'Subitem 8'],
//     ),
//   ];
//   List<Item> _selectedItems = [];
//
//   void _toggleItemSelection(Item item) {
//     setState(() {
//       if (_selectedItems.contains(item)) {
//         _selectedItems.remove(item);
//       } else {
//         _selectedItems.add(item);
//       }
//     });
//   }
//
//   void _toggleSubItemSelection(Item item, String subItem) {
//     setState(() {
//       if (_selectedItems.contains(item)) {
//         if (_selectedItems.firstWhere((i) => i == item).subItems.contains(subItem)) {
//           _selectedItems.firstWhere((i) => i == item).subItems.remove(subItem);
//         } else {
//           _selectedItems.firstWhere((i) => i == item).subItems.add(subItem);
//         }
//       }
//     });
//   }
//
//   void _navigateToNextPage() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => NextPage(selectedItems: _selectedItems),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Multiple Selection'),
//       ),
//       body: ListView.builder(
//         itemCount: yourDataList.length,
//         itemBuilder: (context, index) {
//           final item = yourDataList[index];
//           final isSelected = _selectedItems.contains(item);
//           return Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               ListTile(
//                 title: Text(item.name),
//                 onTap: () => _toggleItemSelection(item),
//                 trailing: Icon(
//                   isSelected ? Icons.check_box : Icons.check_box_outline_blank,
//                 ),
//               ),
//               if (isSelected)
//                 ListView.builder(
//                   shrinkWrap: true,
//                   itemCount: item.subItems.length,
//                   itemBuilder: (context, subIndex) {
//                     final subItem = item.subItems[subIndex];
//                     final isSubItemSelected = _selectedItems
//                         .firstWhere((i) => i == item)
//                         .subItems
//                         .contains(subItem);
//                     return CheckboxListTile(
//                       title: Text(subItem),
//                       value: isSubItemSelected,
//                       onChanged: (_) => _toggleSubItemSelection(item, subItem),
//                     );
//                   },
//                 ),
//             ],
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _navigateToNextPage,
//         child: Icon(Icons.navigate_next),
//       ),
//     );
//   }
// }



// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Multiple Selection Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MultipleSelectionPage(),
//     );
//   }
// }


import 'package:flutter/material.dart';

import 'model.dart';
import 'next_page.dart';





class MultipleSelectionPage extends StatefulWidget {
  @override
  _MultipleSelectionPageState createState() => _MultipleSelectionPageState();
}

class _MultipleSelectionPageState extends State<MultipleSelectionPage> {
  List<Item> yourDataList = [
    Item(
      id: 1,
      name: 'Item 1',
      subItems: ['Subitem 1', 'Subitem 2', 'Subitem 3'],
    ),
    Item(
      id: 2,
      name: 'Item 2',
      subItems: ['Subitem 4', 'Subitem 5'],
    ),
    Item(
      id: 3,
      name: 'Item 3',
      subItems: ['Subitem 6', 'Subitem 7', 'Subitem 8'],
    ),
  ];
  List<Item> _selectedItems = [];

  void _toggleItemSelection(Item item) {
    setState(() {
      if (_selectedItems.contains(item)) {
        _selectedItems.remove(item);
      } else {
        _selectedItems.add(item);
      }
    });
  }

  void _toggleSubItemSelection(Item item, String subItem) {
    setState(() {
      if (_selectedItems.contains(item)) {
        if (item.selectedSubItem == subItem) {
          item.selectedSubItem = null;
        } else {
          item.selectedSubItem = subItem;
        }
      }
    });
  }

  void _navigateToNextPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NextPage(selectedItems: _selectedItems),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multiple Selection'),
      ),
      body: ListView.builder(
        itemCount: yourDataList.length,
        itemBuilder: (context, index) {
          final item = yourDataList[index];
          final isSelected = _selectedItems.contains(item);
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text(item.name),
                onTap: () => _toggleItemSelection(item),
                trailing: Icon(
                  isSelected ? Icons.check_box : Icons.check_box_outline_blank,
                ),
              ),
              if (isSelected)
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: item.subItems.length,
                  itemBuilder: (context, subIndex) {
                    final subItem = item.subItems[subIndex];
                    final isSubItemSelected = item.selectedSubItem == subItem;
                    return ListTile(
                      title: Text(subItem),
                      leading: Radio(
                        value: subItem,
                        groupValue: item.selectedSubItem,
                        onChanged: (_) => _toggleSubItemSelection(item, subItem),
                      ),
                    );

                  },
                ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _navigateToNextPage,
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}



// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Multiple Selection Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MultipleSelectionPage(),
//     );
//   }
// }
