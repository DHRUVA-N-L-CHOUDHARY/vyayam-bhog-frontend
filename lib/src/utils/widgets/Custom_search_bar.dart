// import 'package:flutter/material.dart';
// import 'package:paginated_search_bar/paginated_search_bar.dart';
// import 'package:endless/endless.dart';

// class ExampleItem {
//   final String title;

//   ExampleItem({
//     required this.title,
//   });
// }

// class ExampleItemPager {
//   int pageIndex = 0;
//   final int pageSize;

//   ExampleItemPager({
//     this.pageSize = 20,
//   });

//   List<ExampleItem> nextBatch() {
//     List<ExampleItem> batch = [];

//     for (int i = 0; i < pageSize; i++) {
//       batch.add(ExampleItem(title: 'Item ${pageIndex * pageSize + i}'));
//     }

//     pageIndex += 1;

//     return batch;
//   }
// }


// class CustomSearchBarPage extends StatefulWidget {
//   const CustomSearchBarPage({Key? key, }) : super(key: key);

 

//   @override
//   State<CustomSearchBarPage> createState() => _CustomSearchBarPageState();
// }

// class _CustomSearchBarPageState extends State<CustomSearchBarPage> {
//   @override
//   Widget build(BuildContext context) {
//     ExampleItemPager pager = ExampleItemPager();

//     return Container(
//       padding: const EdgeInsets.only(top: 200),
//       alignment: Alignment.topCenter,
//       child: SizedBox(
//         width: 600,
//         child: PaginatedSearchBar<ExampleItem>(
//           maxHeight: 300,
//           hintText: 'Search',
//           emptyBuilder: (context) {
//             return const Text("I'm an empty state!");
//           },
//           // placeholderBuilder: (context) {
//           //   return const Text("I'm a placeholder state!");
//           // },
//           paginationDelegate: EndlessPaginationDelegate(
//             pageSize: 20,
//             maxPages: 3,
//           ),
//           onSearch: ({
//             required pageIndex,
//             required pageSize,
//             required searchQuery,
//           }) async {
//             return Future.delayed(const Duration(milliseconds: 1300), () {
//               if (searchQuery == "empty") {
//                 return [];
//               }

//               if (pageIndex == 0) {
//                 pager = ExampleItemPager();
//               }

//               return pager.nextBatch();
//             });
//           },
//           itemBuilder: (
//             context, {
//             required item,
//             required index,
//           }) {
//             return Text(item.title);
//           },
//         ),
//       ),
//     );
//   }
// }