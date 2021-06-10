import "package:flutter/material.dart";

class CookiePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  _buildCard('Cookie mint', 'assets/cookiemint.jpg', false,
                      false, context),
                  _buildCard('Cookie cream', 'assets/cookiecream.jpg', true,
                      false, context),
                  _buildCard('Cookie classic', 'assets/cookieclassic.jpg',
                      false, true, context),
                  _buildCard('Cookie choco', 'assets/cookiechoco.jpg', false,
                      false, context)
                ],
              )),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget _buildCard(
      String name, String imgPath, bool added, bool isFavorite, context) {
    return Padding(
      padding: EdgeInsets.only(top: 3.0, bottom: 3.0, left: .0, right: 3.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1.0,
                    blurRadius: 2.0)
              ],
              color: Colors.white),
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.all(2.0),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    isFavorite
                        ? Icon(Icons.favorite, color: Color(0xFFEF7532))
                        : Icon(Icons.favorite_border, color: Color(0xFFEF7532))
                  ])),
              Hero(
                tag: imgPath,
                child: Container(
                  height: 150.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5.0),
              Text(name,
                  style: TextStyle(
                      color: Colors.blue.shade900,
                      fontFamily: 'Varela',
                      fontSize: 14.0)),
              Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Container(color: Color(0xFFEBEBEB), height: 1.0)),
              Padding(
                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // ignore: sdk_version_ui_as_code
                    if (!added) ...[
                      Text(
                        'Food .  >60mins',
                        style: TextStyle(
                            fontFamily: 'Varela',
                            color: Color(0xFFD17E50),
                            fontSize: 12.0),
                      ),
                    ],
                    // ignore: sdk_version_ui_as_code
                    if (added) ...[
                      Text(
                        'Food .  >60mins',
                        style: TextStyle(
                            fontFamily: 'Varela',
                            color: Color(0xFFD17E50),
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0),
                      ),
                    ]
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
