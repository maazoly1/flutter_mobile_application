import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobile_application/icecream/model/IcecreamData.dart';

class IcecreamView extends StatelessWidget {
  const IcecreamView({super.key});

  Future<List<IcecreamData>?> loadIcecreams() async {
    final response = await rootBundle.loadString("assets/icecreams.json");
    final result = icecreamDataFromJson(response);
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Welcome to Icecream Shop",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text(
            "We have something yummy for you",
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Expanded(
              child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FutureBuilder(
                    future: loadIcecreams(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        final List<IcecreamData>? data = snapshot.data;
                        return Expanded(
                            child: ListView.builder(
                                itemCount: data!.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return ListTile(
                                      title: Text(data[index].name as String));
                                }));
                      } else {
                        return const Center(
                            child: CircularProgressIndicator.adaptive());
                      }
                    })
                // if (data != null)
                // else
              ],
            ),
          )),
        ],
      ),
    );
  }
}
