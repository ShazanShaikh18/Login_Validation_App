import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myyy_app/models/catalog.dart';
import 'package:myyy_app/widgets/drawer.dart';
import 'package:myyy_app/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    final int days = 30;
    final String name = "Shazan";
    final String month = "March";
    //double pi = 3.14;
    //bool isMale = true;
    //num temp = 30.5;
    var day = "Friday";

    // @override
    // void initState() {
    //   super.initState();
    //   loadData();
    // }

    // loadData() async {
    //   var catalogJson await rootBundle.loadString("assets/files/catalog.json");
    //   print(catalogJson);
    // }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App", style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList
              .length, // CatalogModel.items.length, For Add Single and Diffrent Product
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[
                  index], // CatalogModel.items[index], For Add Single and Diffrent Product
            );
          },
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
