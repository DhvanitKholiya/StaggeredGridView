import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    Map Data = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${Data['subtitle']}",
          style: const TextStyle(fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: StaggeredGrid.count(crossAxisCount: 2,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4, children: [
        StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 4,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                    child: Image.network('${Data['1']}')),
                Container(
                    padding: const EdgeInsets.all(10),
                    child: Image.network('${Data['2']}')),
                Container(
                    padding: const EdgeInsets.all(10),
                    child: Image.network('${Data['3']}')),
              ],
            )),
        StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 4,
            child: Column(
              children: [
                Container(
                    padding: const EdgeInsets.all(10),
                    child: Image.network('${Data['4']}')),
                Container(
                    padding: const EdgeInsets.all(10),
                    child: Image.network('${Data['5']}')),
                Container(
                  padding: const EdgeInsets.all(10),
                    child: Image.network('${Data['6']}')),
              ],
            )),
      ]),
    );
  }
}
