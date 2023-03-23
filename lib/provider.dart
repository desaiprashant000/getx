import 'package:flutter/material.dart';
import 'package:getx/provider_class.dart';
import 'package:provider/provider.dart';

class pro extends StatelessWidget {
  const pro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    proclass p = Provider.of(context);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    p.decre();
                  },
                  child: Text("-")),
              Text("${p.a}"),
              ElevatedButton(
                  onPressed: () {
                    p.incre();
                  },
                  child: Text("+")),
            ],
          ),
          TextField(
            onChanged: (value) {
              p.passvalue(value);
            },
          ),
          Text("${p.val}"),
        ],
      ),
    );
  }
}
