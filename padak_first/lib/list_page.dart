import 'package:flutter/material.dart';
import 'model/data/dummys_repository.dart';
import 'model/response/movies_response.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPage createState() => _ListPage();
}

class _ListPage extends State<ListPage> {
  List<Movie>? get movies => DummysRepository.loadDummyMovies();
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (_, index) => Divider(color: Colors.grey,),
      itemCount: 8,
      itemBuilder: (context, index) {
        return movies != null ?  _buildListItem(movies![index]) : Container();
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
  Widget _buildListItem(Movie movie){
    return Container(
      padding: EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network('https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTAxMzBfMjY1%2FMDAxNjEyMDExMTA1NDE2.uNF9v-0otz6FIGSZGOb5nSyuR6pa6ffkwHqQGeijfEIg.xNquFIFcpBjsfJnvRCMj8YKC16FLEiSe3Ao7MFvShQAg.PNG.kyunghi39%2F%25BC%25AD%25B9%25D9%25C0%25CC%25BA%25EA_%25B4%25F5%25B3%25AA%25C0%25D5_%25C6%25F7%25BD%25BA%25C5%25CD.png&type=a340', height: 120,),
          Padding(padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('${movie.title}',
                    style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(width: 8,),
                  _buildGradeImage(movie.grade ?? 0),


                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text('평점 : ${movie.userRating ?? 0/2}'),
                  SizedBox(width: 10,),
                  Text('예매순위 : ${movie.reservationGrade}'),
                  SizedBox(width: 10,),
                  Text('예매율 : ${movie.reservationRate}')
                ],
              ),
              SizedBox(height: 10,),
              Text('개봉일 : ${movie.date }')
            ],
          ),)
        ],
      ),
    );
  }
}
