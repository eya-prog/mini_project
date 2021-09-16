import 'package:flutter/material.dart';

class messenger_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blueGrey[400],
          elevation: 10,
          titleSpacing: 20.0,
          title: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 18,
                backgroundImage: NetworkImage(
                    'https://i.pinimg.com/564x/64/1c/4a/641c4acc7b305df3eb11fc5a8941b0b6.jpg'),
              ),
              SizedBox(width: 20),
              Text('Chats'),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.camera_alt,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.edit,
                )),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300]),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                      ),
                      SizedBox(width: 10),
                      Text('Search'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 100.0,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder:(context,index)=>SizedBox(width: 20) ,
                  itemBuilder: (context,index)
                {
                  return buildStoryItem();
                },
                  itemCount: 10,
                ),
              ),
              SizedBox(height: 20),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context,index)
                {
                  return buildChatItem();
                },
                separatorBuilder:(context,index)=>SizedBox(height: 20) ,
                itemCount: 15,
              ),

            ],
          ),
        ),
      ),
    );
  }


  //arrow function(return one objet here 'row'
  Widget buildChatItem()=> Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/564x/64/1c/4a/641c4acc7b305df3eb11fc5a8941b0b6.jpg'),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                  bottom: 3.0, end: 3.0),
              child: CircleAvatar(
                backgroundColor: Colors.green[400],
                radius: 7,
              ),
            ),
          ],
        ),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Eya gueddes',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(
                      child: Text(
                        'Hello my name is Eya gueddes',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )),
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      width: 7,
                      height: 7,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.green),
                    ),
                  ),
                  Text('08:00pm'),
                ],
              ),
            ],
          ),
        )
      ],
    );
  Widget buildStoryItem()=>Container(
    width: 60,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/564x/64/1c/4a/641c4acc7b305df3eb11fc5a8941b0b6.jpg'),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                  bottom: 3.0, end: 3.0),
              child: CircleAvatar(
                backgroundColor: Colors.green[400],
                radius: 7,
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Text('Eya gueddes',
            maxLines: 2, overflow: TextOverflow.ellipsis),
      ],
    ),
  );




}
