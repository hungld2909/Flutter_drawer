import 'package:flutter/material.dart';

//todo 1: Step1 khởi tạo StatefullWidget
class MainPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new MainPageState(); //todo: gọi hàm MainPageState
  }
}
//todo 2: step 2 khởi tạo MainPageState để thay đổi state.
class MainPageState extends State<MainPage>{
  var title = ''; // titles is "mutable property"


  Drawer _buildDrawer(context){ //todo 4: write hàm _buildDrawer
    return new Drawer(
child: new ListView( //! trong Draw muốn có nhiều danh sách thì gọi hàm ListView.
  padding:  EdgeInsets.zero,
      children: <Widget>[
        new DrawerHeader( //! drawerHeader sử dụng để hiện thị phần Header. 
          child: new Container( //! trong DrawerHeader gọi hàm Comtainer.
            child: new Column(  //! trong Container gọi hàm Column
              mainAxisAlignment: MainAxisAlignment.spaceAround, //! hàm này xét khoảng cách trong Column
              crossAxisAlignment: CrossAxisAlignment.start, //! hàm này xét khoảng cách trong Column
              children: <Widget>[ //! trong Column có nhiều thuộc tính con lên sẽ phải gọi Children
                new Image.asset('images/hi.jpg', //! Image.asset. call image from to device
                width: 100.0, //! xét chiều dài cho image
                height: 80.0, //! xét chiều cao cho image
                fit: BoxFit.cover, //! fit: BoxFit xét image co giãn phù hợp với ô chứa image
                ),
                new Text("Hung Ld", //! create text hiện thị dưới image
                style: new TextStyle(color: Colors.white,fontSize: 25.0,fontWeight: FontWeight.bold),
                ),
                new Text("GenSoft Vina", //! create text hiện thị dưới image
                style: new TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
             decoration: new BoxDecoration( 
              color: Colors.blue
            ),
          ),
          new ListTile( //! listTile là các phần tử nhỏ trong listView
            leading: new Icon(Icons.photo_album), //! leading hiện thị icon bên trái
            title: new Text('Photos'), //! show Text
            onTap: (){ //! bắt sự kiện khi người dùng click vào Text
              setState(() {
                this.title = 'This Is Photo Page'; 
              });
              Navigator.pop(context);
            },
            
          ),

               new ListTile(
            leading: new Icon(Icons.notifications),
            title: new Text('Notification'),
            onTap: (){
              setState(() {
                this.title = 'This Is Notifications';
              });
              Navigator.pop(context);
            },
          )
          ,

                new ListTile(
            leading: new Icon(Icons.settings),
            title: new Text('Setting'),
            onTap: (){
              setState(() {
                this.title = 'This Is Settings';
              });
            },
          )
          , 
          new Divider(
            color: Colors.black12,
            indent: 16.0,
          ),
       new ListTile(
            leading: new Icon(Icons.contact_phone),
            title: new Text('Contact'),
            onTap: (){
              setState(() {
                this.title = 'This Is Contact';
              });
            },
          )
      ],
    )
    );
  }

  //todo 3: khởi tạo layout trên thiết bị.
  @override
  Widget build(BuildContext context) {
    return new Scaffold( 
      appBar: new AppBar( 
        title: new Text("Drawer in Flutter"), //! tạo tiêu đề cho thiết bị

      ),
      body: new Center(
        child: new Text(this.title,style: new TextStyle(fontSize: 25.0),), //! hiện thị text lên trên màn hình thiết bị
      ),
      drawer: _buildDrawer(context), //! tạo drawer trên màn hình thiết bị
    );
  }
}
