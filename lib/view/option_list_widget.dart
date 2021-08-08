import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/product.dart';

class OptionListWidget extends StatefulWidget {
  List<ExtraItemEntity>? list;

  OptionListWidget({this.list});

  @override
  State<StatefulWidget> createState() {
    return _OptionListWidget();
  }
}

class _OptionListWidget extends State<OptionListWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.list?.length,
        itemBuilder: (context, index) {
          return CheckboxListTile(
              title: Text(widget.list![index].name!),
              value: widget.list![index].isChecked,
              onChanged: (val) {
                setState(() {
                  widget.list![index].isChecked = val;
                });
              });
        });
  }
}
