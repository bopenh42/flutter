import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String title;
  final String body;
  const DetailScreen({Key key, this.body, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Screen"),
      ),
      body: Container(
        // padding: EdgeInsets.all(200.0),
        child: Card(
          color: Colors.grey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            // children: [
            // Container(
            //     decoration:
            //         BoxDecoration(border: Border.all(color: Colors.blueGrey)),
            //     width: 300,
            //     child: CircleAvatar(
            //       child: Image.asset("images/magic-book.png")
            //     )),

            children: [
              SizedBox(
                height: 220,
              ),
              Container(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      "images/magic-book.png",
                      width: double.infinity,
                      fit: BoxFit.cover,
                    )
                    // Image.network(
                    //   "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ0YL8JMFhbNpp76cO92s_I9TRSxgGXVTv4Vg&usqp=CAU",
                    //   width: double.infinity,
                    //   fit: BoxFit.cover,
                    // ),
                    ),
              ),
              Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: <Widget>[
                  Flexible(
                      // Padding(
                      //     padding: const EdgeInsets.fromLTRB(40, 0, 20, 20)),
                      child: Text(
                    body + ' ' + body,
                    maxLines: 8,
                    softWrap: true,
                    overflow: TextOverflow.fade,
                  ))
                ],
              ),
              // Text(body),

              SizedBox(
                height: 80,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Text(
                  //   "\tTitle:",
                  //   style: TextStyle(fontSize: 30, color: Colors.white),
                  // ),
                  Divider(
                    thickness: 1,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          title.toUpperCase(),
                          maxLines: 3,
                          style: Theme.of(context)
                              .primaryTextTheme
                              .caption
                              .copyWith(color: Colors.white),
                          overflow: TextOverflow.ellipsis,
                          textScaleFactor: 1.5,
                        ),
                        // ),
                      )
                    ],
                  )
                ],
              ),
              // Text(
              //   title + "kjajdfsjdfsdfs Hidasd",
              //   style: TextStyle(
              //     fontWeight: FontWeight.bold,
              //     fontSize: 16,
              //   ),
              //   softWrap: true,
              //   maxLines: 2,
              //   overflow: TextOverflow.ellipsis,
              // ),
              // Container(
              //   padding: EdgeInsets.only(left: 10.0),
              //   child: Text(
              //     body,
              //     style: TextStyle(
              //       fontSize: 14,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
