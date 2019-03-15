import 'package:flutter/material.dart';
import 'Carousel.dart';

class AmazonProductDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
            color: Colors.black,
            iconSize: 25.0,
          ),
          IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {},
              color: Colors.black,
              iconSize: 25.0)
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.menu, color: Colors.black, size: 35.0),
            Image.asset(
              'assets/amazon.png',
              height: 40.0,
            )
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        margin: EdgeInsets.only(top: 5.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  'Trending Categories',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                ),
                Spacer(),
                Text(
                  'View all',
                  style: TextStyle(color: Color(0xffD0D0D0)),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                _tagButton('Household'),
                SizedBox(
                  width: 12.0,
                ),
                _tagButton('Grocery'),
                SizedBox(
                  width: 12.0,
                ),
                _tagButton('Kitchen')
              ],
            ),
            SizedBox(height: 10.0),
            _slider(),
            SizedBox(height: 10.0,),
            Row(
              children: <Widget>[
                Text(
                  'Deal of the Day',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                ),
                Spacer(),
                Text(
                  'View all',
                  style: TextStyle(color: Color(0xffD0D0D0)),
                )
              ],
            ),
            SizedBox(height:5.0),
            Image.asset('assets/macbook.png', height :300,),
            Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Apple Macbook Gold \n 256GB',style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 2.0,),
                    Text('Ends in 23:59:59',),
                    SizedBox(height: 2.0,),

                    Text('Book now to get 100\$ off'),
                    SizedBox(height: 2.0),
                    _tagButton('Starting from \$1166')
                  ],
                ),
                Spacer(),
                Image.asset('assets/amazon.png',height: 50.0,)
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _tagButton(String text) {
    return FlatButton(
      onPressed: () {},
      child: Text(text),
      color: Color(0xffFFC550),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    );
  }

  Widget _slider() {
    return Carousel(
      itemWidgets: <Widget>[_firstCarouselItem(),_secondCarouselItem()],
    );
  }

  Widget _firstCarouselItem() {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              stops: [0.1, 0.5, 0.7, 0.9],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.indigo[300],
                Colors.indigo[200],
                Colors.indigo[100],
                Colors.indigo[50],
              ])),
      padding: EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text('Alexa play something \nUp beat',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
              SizedBox(height: 10.0,),
              Text('The most amazing virtual\nperson ever'),
              Spacer(),
              Image.asset('assets/amazon-alexa-logo.png',height: 50,fit: BoxFit.cover,)
            ],
          ),
          Column(
            children: <Widget>[
              Text('Starting from \$999',style: TextStyle(fontSize: 18),),
              Spacer(),
              Image.asset('assets/alexa.png',height: 100 ,fit: BoxFit.cover,)

            ],
          )
        ],
      ),
    );
  }
  Widget _secondCarouselItem() {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              stops: [0.1, 0.5, 0.7, 0.9],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.green[300],
                Colors.green[200],
                Colors.green[100],
                Colors.green[50],
              ])),
      padding: EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text('Alexa play something \nUp beat',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
              SizedBox(height: 10.0,),
              Text('The most amazing virtual\nperson ever'),
              Spacer(),
              Image.asset('assets/amazon-alexa-logo.png',height: 50,fit: BoxFit.cover,)
            ],
          ),
          Column(
            children: <Widget>[
              Text('Starting from \$999',style: TextStyle(fontSize: 18),),
              Spacer(),
              Image.asset('assets/alexa.png',height: 100 ,fit: BoxFit.cover,)
            ],
          )
        ],
      ),
    );
  }
}
