import 'package:flutter/material.dart';
import '../widgets/bottom_sheet_list_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Flutter Bottom Sheet Demo',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    isDismissible: true,
                    builder: (BuildContext context) {
                      return StatefulBuilder(
                          builder: (BuildContext ctx, StateSetter myState) {
                        return const RawScrollbar(
                          thumbVisibility: true,
                          thumbColor: Colors.blue,
                          radius: Radius.circular(24),
                          thickness: 5,
                          trackVisibility: true,
                          child: SingleChildScrollView(
                            child: BottomSheetListView(),
                          ),
                        );
                      });
                    });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(24),
                ),
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'TAP HERE TO SHOW',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
