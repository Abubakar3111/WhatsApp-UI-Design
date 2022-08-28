import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal.shade700,
          title: Text('WhatsApp'),
          bottom: TabBar(tabs: [
            Tab(child: Icon(Icons.camera_alt)),
            Tab(
              child: Text('Chats'),
            ),
            Tab(
              child: Text('Status'),
            ),
            Tab(
              child: Text('Calls'),
            ),
          ]),
          actions: [
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            PopupMenuButton(
                icon: Icon(Icons.more_vert),
                itemBuilder: (
                  context,
                ) =>
                    [
                      PopupMenuItem(value: 1, child: Text('New Group')),
                      PopupMenuItem(value: 1, child: Text('lined device')),
                      PopupMenuItem(value: 1, child: Text('Setting')),
                      PopupMenuItem(value: 1, child: Text('Logout')),
                    ]),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: TabBarView(children: [
          Icon(Icons.camera_alt,size: 300,color: Colors.teal.shade600,),
          ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage:index % 2 == 0? NetworkImage(
                        'https://images.pexels.com/photos/7129744/pexels-photo-7129744.jpeg?auto=compress&cs=tinysrgb&w=600')
                 :NetworkImage('https://images.pexels.com/photos/2608353/pexels-photo-2608353.jpeg?auto=compress&cs=tinysrgb&w=600') ),
                  title:index % 2 == 0? Text('Abubakar'):Text('Ahmed'),
                  subtitle:index % 2 == 0? Text('Hey!where are you myte?'):Text('i am waiting outside....'),
                  trailing: Text('6:36 pm'),
                );
              }),
          ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return index == 0
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 3,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(
                                    'https://images.pexels.com/photos/5988921/pexels-photo-5988921.jpeg?auto=compress&cs=tinysrgb&w=600'),
                              ),
                            ),
                            title: Text(
                              'My Status',
                              style: TextStyle(fontSize: 20),
                            ),
                            subtitle: Text('Yesterday.10:59 PM'),
                            trailing: PopupMenuButton(
                                icon: Icon(Icons.more_horiz),
                                itemBuilder: (
                                  context,
                                ) =>
                                    [
                                      PopupMenuItem(
                                          value: 1, child: Text('Forward')),
                                      PopupMenuItem(
                                          value: 1, child: Text('Share')),
                                      PopupMenuItem(
                                          value: 1,
                                          child: Text('Share to Facebook')),
                                      PopupMenuItem(
                                          value: 1, child: Text('Delete')),
                                    ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              'Recent Updates',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          ListTile(
                            leading: index % 2 == 0
                                ? Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        width: 3,
                                        color: Colors.green.shade600,
                                      ),
                                    ),
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundImage: NetworkImage(
                                          'https://images.pexels.com/photos/8164737/pexels-photo-8164737.jpeg?auto=compress&cs=tinysrgb&w=600'),
                                    ),
                                  )
                                : Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        width: 3,
                                        color: Colors.green,
                                      ),
                                    ),
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundImage: NetworkImage(
                                          'https://images.pexels.com/photos/7129744/pexels-photo-7129744.jpeg?auto=compress&cs=tinysrgb&w=600'),
                                    ),
                                  ),
                            title:index % 2 == 0? Text('Abubakar'):Text('Ahmed'),
                            subtitle: Row(
                              children: [Text("26 minutes ago")],
                            ),
                          ),
                        ],
                      );
              }),
          ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                      backgroundImage:index % 2 == 0? NetworkImage(
                          'https://images.pexels.com/photos/7129744/pexels-photo-7129744.jpeg?auto=compress&cs=tinysrgb&w=600')
                          :NetworkImage('https://images.pexels.com/photos/2608353/pexels-photo-2608353.jpeg?auto=compress&cs=tinysrgb&w=600')

                  ),
                  title:index % 2 == 0? Text('Abubakar'):Text('Ahmed'),
                  subtitle: Row(
                    children: [
                      index % 2 == 0
                          ? Icon(
                              Icons.outbond_outlined,
                              color: Colors.green,
                            )
                          : Icon(
                              Icons.arrow_circle_down,
                              color: Colors.red,
                            ),
                      Text("August 11,7:38 PM")
                    ],
                  ),
                  trailing: index % 2 == 0
                      ? Icon(Icons.call, color: Colors.teal.shade700)
                      : Icon(Icons.video_camera_back_rounded,
                          color: Colors.teal.shade700),
                );
              }),

        ]),
      ),
    );
  }
}
