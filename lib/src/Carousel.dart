import 'package:flutter/material.dart';
import 'dart:async';

class Carousel extends StatefulWidget {
  final List<Widget> itemWidgets;

  const Carousel({Key key, this.itemWidgets}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CarouselWidgetState();
  }
}

class _CarouselWidgetState extends State<Carousel> {
  final _controller = PageController();

  @override
  void initState() {
    super.initState();

    Timer.periodic(Duration(seconds: 3), (_) {
      if (_controller.page == widget.itemWidgets.length -1) {
        _controller.animateTo(0, duration: Duration(seconds: 1), curve: Curves.ease);
      } else {
        _controller.nextPage(duration: Duration(seconds: 1), curve: Curves.ease);
      }
    });
//    new
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
      child: PageView.builder(
        controller: _controller,
        itemBuilder: (context, position) {
          return _buildSingleItem(position);
        },
        itemCount: widget.itemWidgets.length,
      ),
    );
  }

  Widget _buildSingleItem(int index) {
    return Stack(
      children: <Widget>[
        widget.itemWidgets[index],
        _buildSliderDots(index)
      ],
    );
//    return
  }

  Widget _buildSliderDots(index) {
    List<Widget> iconLists = [];
    for (int i = 0; i < widget.itemWidgets.length; i++)
      iconLists.add(Icon(
        Icons.fiber_manual_record, size: i == index ? 15.0 : 10.0,
        color: Colors.white,));
    return Positioned(
      child: Row(
        children: iconLists,
      ),
      bottom: 10.0,
      left: 150.0,
    );
  }
}
