import 'dart:convert';

import 'package:coffeeshop/view/option_list_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../models/product.dart';

class CoffeeCartPage extends StatefulWidget {
  CoffeeCartPage();

  @override
  State<StatefulWidget> createState() {
    return _CoffeeCartPageState();
  }
}

class _CoffeeCartPageState extends State<CoffeeCartPage> {
  ProductEntity? product;

  @override
  void initState() {
    super.initState();
    loadJson();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _buildWidgetList() {
      int index = 0;
      return product!.extra_items!.map((eachItem) {
        //Now we decorate ListTile using Card
        index++;
        return Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: (index - 1) % 2 == 0 ? Colors.green : Colors.teal,
          elevation: 10,
          child: CheckboxListTile(
              title: Text(eachItem.name!),
              value: eachItem.isChecked,
              onChanged: (val) {
                setState(() {
                  eachItem.isChecked = val;
                });
              }),
        );
      }).toList();
    }

    return MaterialApp(
        title: "Main Page",
        home: Scaffold(
            appBar: AppBar(title: Text("Coffee Shop")),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Image.network(product!.images!.full_size!),
                    Container(
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.only(top: 20),
                        child: Text(
                          '${product?.name ?? ""}',
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        )),
                    Container(
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          '${product?.full_description ?? ""}',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.black54),
                        )),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        alignment: Alignment.centerLeft,
                        color: Colors.black12,
                        child: Text(
                          '${product?.extras?[0].name ?? ""} (require)'
                              .toUpperCase(),
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.black87),
                        )),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        alignment: Alignment.centerLeft,
                        color: Colors.black26,
                        child: Text(
                          "Please select 1 item",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        )),
                    (product == null || product?.extra_items == null)
                        ? Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            alignment: Alignment.centerLeft,
                            color: Colors.black26,
                            child: Text(
                              "Please select 1 item",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87),
                            ))
                        : Column(
                            children: _buildWidgetList(),
                          )
                  ],
                ),
              ),
            )));
  }

  loadJson() async {
    var json = await rootBundle.loadString('assets/product.json');
    var jsonResult = jsonDecode(json);

    setState(() {
      product = ProductEntity.fromJson(jsonResult);
    });
  }
}
