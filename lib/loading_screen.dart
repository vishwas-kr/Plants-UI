import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plants/main_screen.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff235E8F),
        body: Stack(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              decoration: BoxDecoration(
                  color: const Color(0xffE7FAFF),
                  borderRadius: BorderRadius.circular(40.0)),
            ),
            Container(
              padding:const EdgeInsets.only(top: 100.0, left: 50.0),
              width: 350,
              height: 500,
              decoration:const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/Background5.png')),
                  color: Color(0xff235E8F),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    bottomLeft: Radius.elliptical(160, 100),
                    bottomRight: Radius.elliptical(200, 200),
                  )),
              child: RichText(
                text:const TextSpan(
                    text: '☘ Planto',
                    style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Sora'),
                    children: [
                      TextSpan(
                        text: '.com',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ]),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin:const EdgeInsets.only(top: 250, left: 120),
                    child:const Image(
                      image: AssetImage('images/Plant22.png'),
                      height: 340,
                    )),
                Container(
                  padding: const EdgeInsets.only(left: 60.0,top:10.0),
                  child:const Text('Find your ',
                      style: TextStyle(
                          fontSize: 24.0,
                          color: Color(0xff71848A),
                          fontFamily: 'Sona',
                          fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  padding:const EdgeInsets.symmetric(horizontal: 60.0),
                  child:const Text('Plants ',
                    style: TextStyle(
                        fontSize: 60.0,
                        color: Color(0xff2C3C49),
                        fontFamily: 'Sona',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin:const EdgeInsets.only(left:270),
                  height:60.0,
                  width:100.0,
                  decoration:const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0)
                    ),
                    gradient:LinearGradient(
                      begin:Alignment.centerLeft,
                      end:Alignment.centerRight,
                      colors:[Color(0xffE5D985),Color(0xffE7FAFF)]
                    )
                  ),
                  child:IconButton(icon:const Icon(Icons.arrow_forward,size:30,color: Color(0xff2C3C49),), onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const MainScreen()));
                  },)
                )
              ],
            )
          ],
        ));
  }
}
