import 'package:flutter/material.dart';
import 'package:p4_15march23/tourism_place.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  final TourismPlace place;
  const DetailPage({Key? key, required this.place}) : super(key: key);

  //final TourismPlace place?;
  //const DetailPage ({ Key? key, this.place }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(place.name),
        ),
        body: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: place.imageUrls.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image.network(
                        place.imageUrls[index],
                        fit: BoxFit.fitHeight,
                      ),
                    );
                  }),
            ),
            Text(place.openDays),
            Text(place.openTime),
            Text(
              'Harga Tiket : ' + place.ticketPrice,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(place.description),

            const SizedBox(height: 20),

            ElevatedButton(onPressed: (){
              _launchInBrowser('https://www.tiktok.com/@ramnnma');
            },
            child: Text('Going To'))
          ],
        )
        );
  }
    Future<void> _launchInBrowser(String url) async {
      final Uri _url = Uri.parse(url);
    if (!await launchUrl(
      _url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }
}
