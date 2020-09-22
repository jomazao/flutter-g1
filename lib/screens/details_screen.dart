import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var style1 = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w300,
    );

    var style2 = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 19, 21),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Image.network(
              'https://recetaspasta.com/wp-content/uploads/2019/10/C%C3%B3mo-hacer-ramen-en-casa.jpg'),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                Text(
                  'Balsamic Basil Chicken',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    height: 0.9,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      '\$12.30',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Discount price',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w300),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'This is  the perfect wekknight dinner. After marinating the chicken everythin including the veggie side! comes together in one pan in less than 30 minutes Call it another skillet chicken dinner win!',
                  style: style1,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Text(
                        'Calory',
                        style: style1,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Flexible(
                        fit: FlexFit.tight,
                        child: Text(
                          'Delivery Cost',
                          style: style1,
                          textAlign: TextAlign.center,
                        )),
                    Flexible(
                        fit: FlexFit.tight,
                        child: Text(
                          'Delivery Time',
                          style: style1,
                          textAlign: TextAlign.center,
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Text(
                          '\$12.30',
                          style: style2,
                          textAlign: TextAlign.center,
                        )),
                    Flexible(
                        fit: FlexFit.tight,
                        child: Text(
                          'Free',
                          style: style2,
                          textAlign: TextAlign.center,
                        )),
                    Flexible(
                        fit: FlexFit.tight,
                        child: Text(
                          '02:00pm',
                          style: style2,
                          textAlign: TextAlign.center,
                        ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Flexible(
                      flex: 3,
                      fit: FlexFit.tight,
                      child: FlatButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.shop,
                        ),
                        color: Colors.white,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: SizedBox(),
                    ),
                    Flexible(
                      flex: 13,
                      fit: FlexFit.tight,
                      child: FlatButton(
                        onPressed: () {},
                        child: Text('Checkout'),
                        color: Colors.amber,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
