import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPage createState() => _ListPage();
}

class _ListPage extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (_, index) => Divider(color: Colors.grey,),
      itemCount: 8,
      itemBuilder: (context, index) {
        return _buildListItem();
      },
    );
  }

  Widget _buildGradeImage(int grade) {
    switch (grade) {
      case 12:
        return Image.asset("assets/ic_12.png");
      case 15:
        return Image.asset("assets/ic_15.png");
      case 19:
        return Image.asset("assets/ic_19.png");
      default:
        return Image.asset("assets/ic_allages.png");
    }
  }

  Widget _buildListItem() {
    return Container(
      padding: EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.network(
              'https://raw.githubusercontent.com/riflockle7/ref/master/1.%20ImageRef/padakpadak/1.jpg',
              height: 120),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      '신과함께-죄와벌',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8),
                    // 1-3. 리스트 화면 (UI 변경 제안 대처)
                    _buildGradeImage(12),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Text('평점 : 139'),
                    SizedBox(width: 10),
                    Text('예매순위 : 1'),
                    SizedBox(width: 10),
                    Text('예매율 : 35.5')
                  ],
                ),
                SizedBox(height: 10),
                Text('개봉일 : 2017-12-20')
              ],
            ),
          )
        ],
      ),
    );
  }
}
