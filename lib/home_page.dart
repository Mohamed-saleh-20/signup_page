import 'package:flutter/material.dart';
import 'package:signup_page/class.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        title: Text(
          'Favorite',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
        actions: [
          Icon(Icons.shopping_cart),
          SizedBox(
            width: 20,
          )
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Expanded(
            child: Container(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                            width: 80,
                            height: 80,
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Image.network(
                                    "https://tse1.mm.bing.net/th?id=OIP.s52xmOKUEt573DRd43lX8QHaHa&pid=Api&P=0&h=220"))),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Chair"),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "  50.00 ",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.clear_sharp)),
                            SizedBox(
                              height: 25,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.shopping_bag_rounded))
                          ],
                        )
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemCount: Listdescription.length),
            ),
          )
        ],
      ),
    );
  }
}
