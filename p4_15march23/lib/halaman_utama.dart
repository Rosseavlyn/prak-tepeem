import 'package:flutter/material.dart';
import 'package:p4_15march23/detail_page.dart';
import 'package:p4_15march23/tourism_place.dart';


class  HalamanUtama extends StatelessWidget {
  const HalamanUtama ({Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text ('Tourism Place'),
      ),
      body: ListView.builder(
        itemCount: tourismPlaceList.length,
        itemBuilder: (context, index) {
          final TourismPlace place = tourismPlaceList[index];
          return InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                  (context) => DetailPage(place: place,)
                  )
                );
            },
            child: Card(
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    child: Image.network(place.imageUrls[0]),
                  ),
                  Text(place.name),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}