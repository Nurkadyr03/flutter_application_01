import 'package:flutter/material.dart';
import 'package:flutter_application_01/homePage/home_page.dart';

class NamePage extends StatelessWidget {
  const NamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("толтурунуз"),
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
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    labelText: 'Ф.И.О. жазыныз',
                    labelStyle: TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    labelText: 'Айылыныздын аты',
                    labelStyle: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => const HomePage(),));
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
