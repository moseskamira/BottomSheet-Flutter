import 'package:flutter/material.dart';
import '../widgets/bottom_sheet_item_card.dart';

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
        title: const Text('Flutter Bottom Sheet Demo'),
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
                        return RawScrollbar(
                          thumbVisibility: true,
                          thumbColor: Colors.blue,
                          radius: const Radius.circular(24),
                          thickness: 5,
                          trackVisibility: true,
                          child: SingleChildScrollView(
                            child: ListView.builder(
                                itemCount: 4,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.vertical,
                                itemBuilder: (BuildContext context, int index) {
                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {});
                                    },
                                    child: BottomSheetItemCard(index: index),
                                  );
                                }),
                          ),
                        );
                      });
                    });
              },
              child: const Text('TAP HERE TO SHOW'),
            ),
          ],
        ),
      ),
    );
  }
}
