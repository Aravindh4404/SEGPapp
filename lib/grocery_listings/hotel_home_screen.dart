import 'package:flutter/material.dart';

// Assuming the detected tags represent the full title of the grocery items you want to display.
class GroceryScreen extends StatefulWidget {
  final List<String> tags; // Detected tags are passed here

  const GroceryScreen({Key? key, required this.tags}) : super(key: key);

  @override
  _GroceryScreenState createState() => _GroceryScreenState();
}

class _GroceryScreenState extends State<GroceryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detected Grocery Items'),
      ),
      body: ListView.builder(
        itemCount: widget.tags.length,
        itemBuilder: (context, index) {
          // Directly use the tags to display the grocery items
          return ListTile(
            title: Text(widget.tags[index]),
            // If you had additional information per tag, you could display it here
          );
        },
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:smart_fridge/grocery_listings/hotel_list_view.dart';
// import 'package:smart_fridge/grocery_listings/model/grocery_list_data.dart';

// import '../src/config/themes/app_theme.dart';
// import 'filters_screen.dart';

// class GroceryScreen extends StatefulWidget {
//   @override
//   _GroceryScreenState createState() => _GroceryScreenState();
// }

// class _GroceryScreenState extends State<GroceryScreen>
//     with TickerProviderStateMixin {
//   AnimationController? animationController;
//   List<GroceryListData> GroceryList = GroceryListData.groceryList;
//   final ScrollController _scrollController = ScrollController();

//   // Add searchText variable
//   String searchText = '';
//   List<GroceryListData> filteredGroceryList = [];


//   @override
//   void initState() {
//     animationController = AnimationController(
//         duration: const Duration(milliseconds: 1000), vsync: this);
//     super.initState();
//   }

//   Future<bool> getData() async {
//     await Future<dynamic>.delayed(const Duration(milliseconds: 200));
//     return true;
//   }

//   @override
//   void dispose() {
//     animationController?.dispose();
//     super.dispose();
//   }

// @override
// @override
// Widget build(BuildContext context) {
//   return Theme(
//     data: AppTheme.buildLightTheme(),
//     child: Container(
//       child: Scaffold(
//         body: Stack(
//           children: <Widget>[
//             InkWell(
//               splashColor: Colors.transparent,
//               focusColor: Colors.transparent,
//               highlightColor: Colors.transparent,
//               hoverColor: Colors.transparent,
//               onTap: () {
//                 FocusScope.of(context).requestFocus(FocusNode());
//               },
//               child: Column(
//                 children: <Widget>[
//                   getAppBarUI(),
//                   Expanded(
//                     child: NestedScrollView(
//                       controller: _scrollController,
//                       headerSliverBuilder:
//                           (BuildContext context, bool innerBoxIsScrolled) {
//                         return <Widget>[
//                           // Remove the SliverPersistentHeader for the search bar
//                           // SliverPersistentHeader(
//                           //   delegate: ContestTabHeader(getSearchBarUI()),
//                           //   pinned: true,
//                           // ),
//                           SliverList(
//                             delegate: SliverChildBuilderDelegate(
//                                 (BuildContext context, int index) {
//                               return getTimeDateUI();
//                             }, childCount: 1),
//                           ),
//                         ];
//                       },
//                       body: Container(
//                         color: AppTheme.buildLightTheme().backgroundColor,
//                         child: ListView.builder(
//                           itemCount: GroceryList.length,
//                           padding: const EdgeInsets.only(top: 8),
//                           scrollDirection: Axis.vertical,
//                           itemBuilder: (BuildContext context, int index) {
//                             final int count =
//                                 GroceryList.length > 10 ? 10 : GroceryList.length;
//                             final Animation<double> animation =
//                                 Tween<double>(begin: 0.0, end: 1.0).animate(
//                               CurvedAnimation(
//                                 parent: animationController!,
//                                 curve: Interval(
//                                     (1 / count) * index, 1.0,
//                                     curve: Curves.fastOutSlowIn),
//                               ),
//                             );
//                             animationController?.forward();

//                             // Check if searchText matches the grocery name exactly
//                             final bool isExactMatch = GroceryList[index].titleTxt.toLowerCase() == searchText.toLowerCase();

//                             // Only show items that exactly match the search text
//                             if (searchText.isEmpty || isExactMatch) {
//                               return GroceryListView(
//                                 callback: () {},
//                                 groceryData: GroceryList[index],
//                                 animation: animation,
//                                 animationController: animationController!,
//                               );
//                             } else {
//                               return SizedBox.shrink(); // Hide the item if it doesn't match the search
//                             }
//                           },
//                         ),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }



// Widget getListUI() {
//     return ListView.builder(
//       itemCount: GroceryList.length,
//       padding: const EdgeInsets.only(top: 8),
//       itemBuilder: (BuildContext context, int index) {
//         final int count = GroceryList.length > 10 ? 10 : GroceryList.length;
//         final Animation<double> animation = Tween<double>(begin: 0.0, end: 1.0).animate(
//           CurvedAnimation(
//             parent: animationController!,
//             curve: Interval((1 / count) * index, 1.0, curve: Curves.fastOutSlowIn),
//           ),
//         );
//         animationController?.forward();

//         return Container(
//           padding: EdgeInsets.all(8.0),
//           margin: EdgeInsets.symmetric(vertical: 4.0),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(8.0),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.3),
//                 spreadRadius: 1,
//                 blurRadius: 3,
//                 offset: Offset(0, 2),
//               ),
//             ],
//           ),
//           child: Text(
//             GroceryList[index].titleTxt,
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         );
//       },
//     );
//   }

//   Widget getHotelViewList() {
//     final List<Widget> GroceryListViews = <Widget>[];
//     for (int i = 0; i < GroceryList.length; i++) {
//       final int count = GroceryList.length;
//       final Animation<double> animation =
//           Tween<double>(begin: 0.0, end: 1.0).animate(
//         CurvedAnimation(
//           parent: animationController!,
//           curve: Interval((1 / count) * i, 1.0, curve: Curves.fastOutSlowIn),
//         ),
//       );
//       GroceryListViews.add(
//         GroceryListView(
//           callback: () {},
//           groceryData: GroceryList[i],
//           animation: animation,
//           animationController: animationController!,
//         ),
//       );
//     }
//     animationController?.forward();
//     return Column(
//       children: GroceryListViews,
//     );
//   }

//   Widget getTimeDateUI() {
//   int itemCount = GroceryList.length;

//   return Padding(
//     padding: const EdgeInsets.only(left: 18, bottom: 16),
//     child: Row(
//       children: <Widget>[
//         Expanded(
//           child: Row(
//             children: <Widget>[
//               Material(
//                 color: Colors.transparent,
//                 child: InkWell(
//                   focusColor: Colors.transparent,
//                   highlightColor: Colors.transparent,
//                   hoverColor: Colors.transparent,
//                   splashColor: Colors.grey.withOpacity(0.2),
//                   borderRadius: const BorderRadius.all(
//                     Radius.circular(4.0),
//                   ),
//                   onTap: () {
//                     FocusScope.of(context).requestFocus(FocusNode());
//                   },
//                   child: Padding(
//                     padding: const EdgeInsets.only(
//                         left: 8, right: 8, top: 4, bottom: 4),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: <Widget>[
//                         Text(
//                           'Items in List',
//                           style: TextStyle(
//                               fontWeight: FontWeight.w100,
//                               fontSize: 16,
//                               color: Colors.grey.withOpacity(0.8)),
//                         ),
//                         const SizedBox(
//                           height: 8,
//                         ),
//                         Text(
//                           '$itemCount',
//                           style: TextStyle(
//                             fontWeight: FontWeight.w100,
//                             fontSize: 16,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(right: 8),
//           child: Container(
//             width: 1,
//             height: 42,
//             color: Colors.grey.withOpacity(0.8),
//           ),
//         ),
//       ],
//     ),
//   );
// }


// Widget getSearchBarUI() {
//   return Padding(
//     padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
//     child: Row(
//       children: <Widget>[
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.only(right: 16, top: 8, bottom: 8),
//             child: Container(
//               height: 100, // Adjust the height as needed
//               decoration: BoxDecoration(
//                 color: AppTheme.buildLightTheme().backgroundColor,
//                 borderRadius: const BorderRadius.all(
//                   Radius.circular(14.0),
//                 ),
//                 boxShadow: <BoxShadow>[
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.2),
//                     offset: const Offset(0, 2),
//                     blurRadius: 8.0,
//                   ),
//                 ],
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 child: TextField(
//                   onChanged: (String searchText) {
//                     setState(() {
//                       // Update the GroceryList to show only items that match the search text
//                       filteredGroceryList = GroceryList.where((item) =>
//                           item.titleTxt.toLowerCase().contains(
//                                 searchText.toLowerCase(),
//                               )).toList();
//                     });
//                   },
//                   style: const TextStyle(
//                     fontSize: 18,
//                   ),
//                   cursorColor: AppTheme.buildLightTheme().primaryColor,
//                   decoration: InputDecoration(
//                     border: InputBorder.none,
//                     hintText: 'Search...',
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//         Container(
//           decoration: BoxDecoration(
//             color: AppTheme.buildLightTheme().primaryColor,
//             borderRadius: const BorderRadius.all(
//               Radius.circular(14.0),
//             ),
//             boxShadow: <BoxShadow>[
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.4),
//                 offset: const Offset(0, 2),
//                 blurRadius: 8.0,
//               ),
//             ],
//           ),
//           child: Material(
//             color: Colors.transparent,
//             child: InkWell(
//               borderRadius: const BorderRadius.all(
//                 Radius.circular(32.0),
//               ),
//               onTap: () {
//                 FocusScope.of(context).requestFocus(FocusNode());
//               },
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Icon(
//                   FontAwesomeIcons.search,
//                   size: 20,
//                   color: AppTheme.buildLightTheme().backgroundColor,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     ),
//   );
// }





//   Widget getFilterBarUI() {
//     return Container();
//     // return Stack(
//     //   children: <Widget>[
//     //     Positioned(
//     //       top: 0,
//     //       left: 0,
//     //       right: 0,
//     //       child: Container(
//     //         height: 24,
//     //         decoration: BoxDecoration(
//     //           color: AppTheme.buildLightTheme().backgroundColor,
//     //           boxShadow: <BoxShadow>[
//     //             BoxShadow(
//     //                 color: Colors.grey.withOpacity(0.2),
//     //                 offset: const Offset(0, -2),
//     //                 blurRadius: 8.0),
//     //           ],
//     //         ),
//     //       ),
//     //     ),
//     //     Container(
//     //       color: AppTheme.buildLightTheme().backgroundColor,
//     //       child: Padding(
//     //         padding:
//     //             const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 4),
//     //         child: Row(
//     //           children: <Widget>[
//     //             Expanded(
//     //               child: Padding(
//     //                 padding: const EdgeInsets.all(8.0),
//     //                 child: Text(
//     //                   '820 items found',
//     //                   style: TextStyle(
//     //                     fontWeight: FontWeight.w100,
//     //                     fontSize: 16,
//     //                   ),
//     //                 ),
//     //               ),
//     //             ),
//     //             Material(
//     //               color: Colors.transparent,
//     //               child: InkWell(
//     //                 focusColor: Colors.transparent,
//     //                 highlightColor: Colors.transparent,
//     //                 hoverColor: Colors.transparent,
//     //                 splashColor: Colors.grey.withOpacity(0.2),
//     //                 borderRadius: const BorderRadius.all(
//     //                   Radius.circular(4.0),
//     //                 ),
//     //                 onTap: () {
//     //                   FocusScope.of(context).requestFocus(FocusNode());
//     //                   Navigator.push<dynamic>(
//     //                     context,
//     //                     MaterialPageRoute<dynamic>(
//     //                         builder: (BuildContext context) => FiltersScreen(),
//     //                         fullscreenDialog: true),
//     //                   );
//     //                 },
//     //                 child: Padding(
//     //                   padding: const EdgeInsets.only(left: 8),
//     //                   child: Row(
//     //                     children: <Widget>[
//     //                       Text(
//     //                         'Filter',
//     //                         style: TextStyle(
//     //                           fontWeight: FontWeight.w100,
//     //                           fontSize: 16,
//     //                         ),
//     //                       ),
//     //                       Padding(
//     //                         padding: const EdgeInsets.all(8.0),
//     //                         child: Icon(Icons.sort,
//     //                             color: AppTheme.buildLightTheme().primaryColor),
//     //                       ),
//     //                     ],
//     //                   ),
//     //                 ),
//     //               ),
//     //             ),
//     //           ],
//     //         ),
//     //       ),
//     //     ),
//     //     const Positioned(
//     //       top: 0,
//     //       left: 0,
//     //       right: 0,
//     //       child: Divider(
//     //         height: 1,
//     //       ),
//     //     )
//     //   ],
//     // );
//   }

//   Widget getAppBarUI() {
//     return Container(
//       decoration: BoxDecoration(
//         color: AppTheme.buildLightTheme().backgroundColor,
//         boxShadow: <BoxShadow>[
//           BoxShadow(
//               color: Colors.grey.withOpacity(0.2),
//               offset: const Offset(0, 2),
//               blurRadius: 8.0),
//         ],
//       ),
//       child: Padding(
//         padding: EdgeInsets.only(
//             top: MediaQuery.of(context).padding.top, left: 8, right: 8),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   'Grocery List',
//                   textAlign: TextAlign.left,
//                   style: TextStyle(
//                     fontWeight: FontWeight.w700,
//                     fontSize: 22 + 6 - 6,
//                     letterSpacing: 1.2,
//                     color: AppTheme.darkerText,
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               width: AppBar().preferredSize.height + 40,
//               height: AppBar().preferredSize.height,
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: <Widget>[
//                   Material(
//                     color: Colors.transparent,
//                     child: InkWell(
//                       borderRadius: const BorderRadius.all(
//                         Radius.circular(32.0),
//                       ),
//                       onTap: () {},
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Icon(
//                           FontAwesomeIcons.bagShopping,
//                           size: 26,
//                           color: Colors.grey.withOpacity(0.8),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ContestTabHeader extends SliverPersistentHeaderDelegate {
//   ContestTabHeader(
//     this.searchUI,
//   );
//   final Widget searchUI;

//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return searchUI;
//   }

//   @override
//   double get maxExtent => 52.0;

//   @override
//   double get minExtent => 52.0;

//   @override
//   bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
//     return false;
//   }
// }
