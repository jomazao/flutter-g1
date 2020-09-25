import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final name = 'Computador Asus';
    final price = 2500000;
    final discountPrice = 2000000;
    final photoUrl =
        'https://images-na.ssl-images-amazon.com/images/I/91RGYokL4RL._AC_SL1500_.jpg';

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(
            photoUrl,
            height: 100,
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '$price',
                style: TextStyle(fontSize: 10),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '$discountPrice',
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 10),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 1,
                      spreadRadius: 0.0,
                      offset:
                          Offset(2.0, 2.0), // shadow direction: bottom right
                    )
                  ],
                ),
                child: Center(
                  child: Text(
                    'Detalles',
                    style: TextStyle(
                      color: Colors.pinkAccent,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 1,
                      spreadRadius: 0.0,
                      offset:
                          Offset(2.0, 2.0), // shadow direction: bottom right
                    )
                  ],
                ),
                child: Center(
                  child: Text(
                    'Pedir',
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
