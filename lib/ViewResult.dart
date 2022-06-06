import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ViewResult extends StatefulWidget {

  ViewResult({Key? key, this.token}) : super(key: key);
  final token;
  @override
  _ViewResult createState() => _ViewResult(token);
}

class _ViewResult extends State<ViewResult>{

_ViewResult(this.token);

var token;

File? _image;

Future getImage() async {
  final image = await ImagePicker().pickImage(source: ImageSource.gallery);
  if(image == null) return;

  final imageTemporary = File(image.path);
  setState(() {
    this._image = imageTemporary;
  });

}


  @override
  Widget build(BuildContext context) {
    return(
    Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
          centerTitle: true,
        title: const Text(
        'Résultat de la fiche',
          style : TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          )
        ),

        leading: const Icon(Icons.assignment,size: 32),
        elevation: 5,
        ),
      body:
          Container(
            color: Colors.white54,
            child : ListView(
             children: [
               const SizedBox(height: 50),
               _image != null ? Image.file(_image!,width: 100,height: 100,fit: BoxFit.cover) : Image.asset('Images/persona.jpg',width: 10),
               IconButton(onPressed: getImage, icon: Icon(Icons.add_circle)),
               Padding(padding: EdgeInsets.only(top : 40,bottom: 15,right: 20,left: 40),
                 child :
                Wrap(
                 spacing: 10,
                 alignment: WrapAlignment.start,
                 runSpacing: 10,
                 children :  <Widget> [
                  Text('Prénom :',
                 style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color : Colors.blue),
                 ),
                  Text(token[2],
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),
                  ),
             ],
        )),
               Padding(padding: EdgeInsets.only(top : 20,bottom: 15,right: 20,left: 40),
                   child :
                   Wrap(
                     spacing: 10,
                     alignment: WrapAlignment.start,
                     runSpacing: 10,
                     children :  <Widget> [
                       Text('Nom :',
                         style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color : Colors.blue),
                       ),
                       Text(token[3],
                         style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),
                       ),
                     ],
                   )),
               Padding(padding: EdgeInsets.only(top : 20,bottom: 15,right: 20,left: 40),
                   child :
                   Wrap(
                     spacing: 10,
                     alignment: WrapAlignment.start,
                     runSpacing: 10,
                     children :  <Widget> [
                       const Text('Bio :',
                         style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color : Colors.blue),
                       ),
                       Text(token[4],
                         style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),
                       ),
                     ],
                   )),
               Padding(padding: EdgeInsets.only(top : 20,bottom: 15,right: 20,left: 40),
                   child :
                   Wrap(
                     spacing: 10,
                     alignment: WrapAlignment.start,
                     runSpacing: 10,
                     children : <Widget> [
                       const Text('Attentes :',
                         style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color : Colors.blue),
                       ),
                       Text(token[5],
                         style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),
                       ),
                     ],
                   )),
               Padding(padding: const EdgeInsets.only(top : 20,bottom: 15,right: 20,left: 40),
                   child :
                   Wrap(
                     spacing: 10,
                     alignment: WrapAlignment.start,
                     runSpacing: 10,
                     children :  <Widget> [
                       const Text('Frustrations :',
                         style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color : Colors.blue),
                       ),
                       Text(token[6],
                         style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),
                       ),
                     ],
                   )),
               Padding(padding: EdgeInsets.only(top : 20,bottom: 15,right: 20,left: 40),
                   child :
                   Wrap(
                     spacing: 10,
                     alignment: WrapAlignment.start,
                     runSpacing: 10,
                     children :  <Widget> [
                       const Text('Age :',
                         style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color : Colors.blue),
                       ),
                       Text(token[7],
                         style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),
                       ),
                     ],
                   )),
               Padding(padding: EdgeInsets.only(top : 20,bottom: 15,right: 20,left: 40),
                   child :
                   Wrap(
                     spacing: 10,
                     alignment: WrapAlignment.start,
                     runSpacing: 10,
                     children :  <Widget> [
                       const Text('Profession :',
                         style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color : Colors.blue),
                       ),
                       Text(token[8],
                         style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),
                       ),
                     ],
                   ))]))
      ));
  }
}