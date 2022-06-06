import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'grid_page.dart';
import 'list_page.dart';
class MainPage extends StatefulWidget {
  @override
  _MainPage createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  int _selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padak First Project'),
        leading: Icon(Icons.menu),
        actions: <Widget>[
          PopupMenuButton<int>(
              icon: Icon(Icons.sort),
              onSelected: (value) {
                switch (value) {
                  case 0:
                    print("예매율순");
                    break;
                  case 1:
                    print("큐레이션");
                    break;
                  default:
                    print("최신순");
                    break;
                }
              },
              itemBuilder: (context) {
                return [
                  PopupMenuItem(value: 0, child: Text('예매율순')),
                  PopupMenuItem(value: 1, child: Text('큐레이션')),
                  PopupMenuItem(value: 2, child: Text('최신순')),
                ];
              })
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'List',
            icon: Icon(Icons.view_list),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_on),
              label: 'Grid'),
        ],
        currentIndex: _selectedTabIndex,
        onTap: (index) {
          setState(() {
            _selectedTabIndex = index;
            print('$_selectedTabIndex tabbed');
          });
        },
      ),
      body: _buildPage(_selectedTabIndex),
    );
  }
  Widget _buildPage(int index){
    if(index == 0){
      return ListPage();
    }
    else{
      return GridPage();
    }
  }
}
