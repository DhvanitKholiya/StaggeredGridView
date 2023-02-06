import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:mediabooster1/Global.dart';
import 'package:mediabooster1/ImagePage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const HomePage(),
      'image' : (context) => const ImagePage(),
    },
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Staggered Grid View"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: StaggeredGrid.count(
        crossAxisCount: 2,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: [
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 4,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                 Column(
                   children: Global.goa.map((e) => GestureDetector(
                     onTap: (){
                       Navigator.of(context).pushNamed('image',arguments: e);
                     },
                     child: Card(
                       elevation: 10,
                       child: Column(
                         children: [
                           Image.network('${e['image']}'),
                           Text("${e['title']}",style: const TextStyle(fontSize: 18),),
                         ],
                       ),
                     ),
                   )).toList(),
                 ),
                  Column(
                    children: Global.kedarnath.map((e) => GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed('image',arguments: e);
                      },
                      child: Card(
                        elevation: 10,
                        child: Column(
                          children: [
                            Image.network('${e['image']}'),
                            Text("${e['title']}",style: const TextStyle(fontSize: 18),),
                          ],
                        ),
                      ),
                    )).toList(),
                  ),
                  Column(
                    children: Global.kutch.map((e) => GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed('image',arguments: e);
                      },
                      child: Card(
                        elevation: 10,
                        child: Column(
                          children: [
                            Image.network('${e['image']}'),
                            Text("${e['title']}",style: const TextStyle(fontSize: 18),),
                          ],
                        ),
                      ),
                    )).toList(),
                  )
                ],
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 4,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                 Column(
                   children: Global.indiaGate.map((e) => GestureDetector(
                     onTap: (){
                       Navigator.of(context).pushNamed('image',arguments: e);
                     },
                     child: Card(
                       elevation: 10,
                       child: Column(
                         children: [
                           Image.network('${e['image']}'),
                           Text("${e['title']}",style: const TextStyle(fontSize: 18),),
                         ],
                       ),
                     ),
                   )).toList(),
                 ),
                  Column(
                    children: Global.ramsetu.map((e) => GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed('image',arguments: e);
                      },
                      child: Card(
                        elevation: 10,
                        child: Column(
                          children: [
                            Image.network('${e['image']}'),
                            Text("${e['title']}",style: const TextStyle(fontSize: 18),),
                          ],
                        ),
                      ),
                    )).toList(),
                  ),
                  Column(
                    children: Global.konark.map((e) => GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed('image',arguments: e);
                      },
                      child: Card(
                        elevation: 10,
                        child: Column(
                          children: [
                            Image.network('${e['image']}'),
                            Text("${e['title']}",style: const TextStyle(fontSize: 18),),
                          ],
                        ),
                      ),
                    )).toList(),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
