import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
       height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
      children: [
        Category(
          image_caption: 'School Books'  ,
        ),
        Category(
          image_caption: 'Degree Books'  ,
        ),
        Category(
          image_caption: 'Law Books'  ,
        ),
        Category(
          image_caption: 'Competitive Books'  ,
        ),
        Category(
          image_caption: 'NCERT Books'  ,
        ),
        Category(
          image_caption: 'Stationary Items'  ,
        ),
      ],
    ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_location,
    this.image_caption
});

    @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(onTap: (){},
    child: Container(
      width: 100.0 ,
      child: ListTile(
        title: Text(image_caption, style: TextStyle(fontSize: 12.0),),
        //subtitle: Text(image_caption),
      ),
    ),
    ),
    );
  }
}

