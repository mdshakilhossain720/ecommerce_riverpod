// Define the HomeScreen widget
import 'package:ecommerceriverpod/constants/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'widgets/chip.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: kSecondaryColor,
            title: SvgPicture.asset(
              "assets/general/store_brand_white.svg",
              width: 180,
            )),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 180,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 80,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    primary: false,
                    children: const [
                      ChipWidgets(
                        label: 'All',
                      ),
                      ChipWidgets(
                        label: 'Camera',
                      ),
                      ChipWidgets(
                        label: 'Mobile',
                      ),
                      ChipWidgets(
                        label: 'Laptop',
                      ),
                      ChipWidgets(
                        label: 'Tablet',
                      ),
                      ChipWidgets(
                        label: 'Headphone',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Big Sale"),
                    Text(
                      "See All",
                      style: TextStyle(color: kPrimaryColor),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 250,
                  width: double.infinity,
                  padding: const EdgeInsets.all(4),
                  child: ListView.builder(
                      padding: const EdgeInsets.all(11),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.all(12),
                          color: kThirdColor,
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("HBangladesh is thebest "),
                              const Text("152"),
                              IconButton(
                                  onPressed: () {}, icon: const Icon(Icons.add))
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ));
  }
}
