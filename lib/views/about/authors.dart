import 'package:flutter/material.dart';
import 'package:portfolio/views/about/language_item.dart';

class FavouriteAuthors extends StatelessWidget {
  const FavouriteAuthors({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        margin: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[600], width: 0.5),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 400,
              child: Text(
                "FAVOURITE AUTHORS",
                style: TextStyle(fontWeight: FontWeight.w200, fontSize: 30),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: double.infinity,
                color: Colors.grey[400],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                LanguageItem("rkn_old.jpg", "RK Narayan"),
                LanguageItem("conan.jpg", "Arthur Conan Doyle"),
                LanguageItem("twain.jpg", "Mark Twain"),
                LanguageItem("danbrown.jpg", "Dan Brown"),
              ],
            ),
          ],
        ));
  }
}
