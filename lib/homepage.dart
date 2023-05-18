import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "Beauty and Health of Your Body",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // const SizedBox(height: 40),
                    const Text(
                      "We have natural skin care produts that help your skin find its health and beauty",
                    ),
                    // const SizedBox(height: 40),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                      ),
                      onPressed: () {},
                      child: const Text("View Products"),
                    ),
                    // const SizedBox(height: 40),
                    SizedBox(
                      width: size.width * 0.2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: const [
                              Text(
                                "80k",
                                style: TextStyle(color: Colors.deepOrange),
                              ),
                              Text("Customers"),
                            ],
                          ),
                          Column(
                            children: const [
                              Text(
                                "50",
                                style: TextStyle(color: Colors.deepOrange),
                              ),
                              Text("Brands"),
                            ],
                          ),
                          Column(
                            children: const [
                              Text(
                                "342",
                                style: TextStyle(color: Colors.deepOrange),
                              ),
                              Text("Articles"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //images
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRect(
                        clipBehavior: Clip.antiAlias,
                        child: Image.network(
                            "https://images.unsplash.com/photo-1609233873389-8b9e1c20a616?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YmVhdXRpZnVsJTIwbGFkeXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80"),
                      ),
                      ClipRect(
                        clipBehavior: Clip.antiAlias,
                        child: Image.network(
                            "https://images.unsplash.com/photo-1609233873389-8b9e1c20a616?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YmVhdXRpZnVsJTIwbGFkeXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Cards(),
              Cards(),
              Cards(),
              Cards(),
            ],
          ),
        )
      ],
    ));
  }
}

class Cards extends StatelessWidget {
  const Cards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: SizedBox(
        width: 300,
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 70,
              height: 90,
              child: Image.network(
                fit: BoxFit.fill,
                "https://images.unsplash.com/photo-1609233873389-8b9e1c20a616?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YmVhdXRpZnVsJTIwbGFkeXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80",
              ),
            ),
            Column(
              // mainAxisSize: MainAxisSize.max,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Multi deep clean for oily skin",
                  maxLines: 2,
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("\$60.00"),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_circle_right_outlined),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
