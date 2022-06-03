import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AuthService {
  Dio dio = Dio();

  login(email, password) async {
    try {
      return await dio.post('https://eth-nophy.herokuapp.com/signin', data: {
        "email": email,
        "password": password
      }, options: Options(contentType: Headers.formUrlEncodedContentType));
    } on DioError catch (e) {
      Fluttertoast.showToast(
          msg: e.response?.data['msg'],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  addUser(email, password) async {
    return await dio.post('https://eth-nophy.herokuapp.com/signup', data: {
      "email": email,
      "password": password
    }, options: Options(contentType: Headers.formUrlEncodedContentType));
  }

  sendInfos(List<String> infos) async {
    return await dio.post('https://eth-nophy.herokuapp.com/sendinfos'
    ,data: {
          "email": infos[0],
          "firstname": infos[1],
          "lastname":infos[2],
          "bio":infos[3],
          "mesattentes":infos[4],
          "mesfrustrations":infos[5],
          "Profession":infos[6],
          "Age":infos[7]
        },
        options: Options(contentType: Headers.formUrlEncodedContentType));
    }

    getinfo(token) async{
          dio.options.headers['Authorization']='Bearer $token';
          return await dio.get('https://eth-nophy.herokuapp.com/getinfo');
    }

    getinfos(email) async {
       return await dio.post('https://eth-nophy.herokuapp.com/getinfos',
         data: {
         "email": email
         }
       );
    }
  }

