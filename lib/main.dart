import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}



class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('瀏覽照片'),
          ),
          body: Center(child: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              child: TextButton(
                child: Text('previous'),
                onPressed: () {},
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextButton(
                child: Text('next'),
                onPressed: () {},
              ),
            ),
          ]))),
    );
  }
}
class _ImageBrowser extends StatefulWidget {

  @override
  State<_ImageBrowser> createState() => _ImageBrowserState();
}

class _ImageBrowserState extends State<_ImageBrowser> {
  @override
  Widget build(BuildContext context) {
    var img = PhotoView(
        imageProvider: AssetImage(widget._images[widget._imagesIndex]),
        minScale: PhotoViewComputedScale.contained * 0.6,
        maxScale: PhotoViewComputedScale.covered,
        enableRotation: true,
        backgroundDecoration: BoxDecoration(
        ));
    return img;
  }
}

class SnackBarDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackBar Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SnackBar Demo'),
        ),
        body: SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: const Text('Yay! A SnackBar!'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Show SnackBar'),
      ),
    );
  }
}

class _ImageBrowser extends StatefulWidget {

  @override
  State<_ImageBrowser> createState() => _ImageBrowserState();
}

class _ImageBrowserState extends State<_ImageBrowser> {
  @override
  Widget build(BuildContext context) {
    var img = PhotoView(
        imageProvider: AssetImage(widget._images[widget._imagesIndex]),
        minScale: PhotoViewComputedScale.contained * 0.6,
        maxScale: PhotoViewComputedScale.covered,
        enableRotation: true,
        backgroundDecoration: BoxDecoration(
        ));
    return img;
  }
}