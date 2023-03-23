import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/getx.dart';
import 'package:getx/provider.dart';
import 'package:getx/provider_class.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(GetMaterialApp(
    home: myapp(),
    debugShowCheckedModeBanner: false,
  ));
}

// void main() {
//   runApp(MaterialApp(
//     home: ChangeNotifierProvider(create: (context) => proclass(),
//     child: pro(),),
//     debugShowCheckedModeBanner: false,
//   ));
// }

class myapp extends StatelessWidget {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    myclass m = Get.put(myclass());
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            controller: t1,
          ),
          TextField(
            controller: t2,
          ),
          OutlinedButton(
              onPressed: () {
                String a = t1.text;
                String b = t2.text;
                m.logic(a, b);
              },
              child: Text("sum")),
          Obx(() => Text("Ans=${m.sum}"))
        ],
      ),
    );
  }
}
