

import 'package:flutter/material.dart';
import 'package:flutter_application_01/screens/registration/name_page.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          " куш келиниз ",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.phone, size: 30),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    labelText: ' телефон номериниз',
                    labelStyle: TextStyle(fontSize: 16),
                    hintText: "+996(xxx)xx xx xx",
                    hintStyle: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.password, size: 30),
                    suffixIcon: Icon(Icons.visibility),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    labelText: 'сыр соз жазыныз',
                    labelStyle: TextStyle(fontSize: 16),
                    hintText:"6 символдон  аз болбосун!",
                    hintStyle: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NamePage(),));
                  },
                  child: const Text(
                    "готово",
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
