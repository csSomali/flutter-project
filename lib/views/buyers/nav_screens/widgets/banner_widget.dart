import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({super.key});

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  final List _BannerImage = [];
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  void initState() {
    getBanners();
    super.initState();
  }

  getBanners() {
    return _firestore.collection('Banners').get().then(
      (QuerySnapshot querySnapshot) {
        querySnapshot.docs.forEach((doc) {
          setState(() {
            _BannerImage.add(doc['image']);
          });
        });
      },
    );
  }

  //BannerWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(10.0),
      child: Container(
        height: 140,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.yellow.shade900,
          borderRadius: BorderRadius.circular(10),
        ),
        child: PageView.builder(
          itemCount: _BannerImage.length,
          
          itemBuilder: (context, index) {
            return Image.network(_BannerImage[index],
            fit: BoxFit.cover,
            );
            
          },
        ),
      ),
    );
  }
}
