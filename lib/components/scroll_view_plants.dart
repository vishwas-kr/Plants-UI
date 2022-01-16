import 'package:flutter/material.dart';

SingleChildScrollView buildScrollableView() {
  return SingleChildScrollView(
      child:Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left:20.0,top:10.0),
                padding: const EdgeInsets.only(top:10.0),
                height:225,
                width:160,
                decoration:BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(child: Image(image: AssetImage('images/Plant2.png'),height: 150,)),
                    const Padding(
                      padding: EdgeInsets.only(left:18.0,top:5.0),
                      child: Text('Calathea',style:TextStyle(fontSize:16.0)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const  Padding(
                          padding:EdgeInsets.only(left:18.0),
                          child: Text('\$85',style:TextStyle(fontSize:16.0)),
                        ),
                        Container(
                            margin:const EdgeInsets.only(right:10.0),
                            height:35.0,
                            width:35.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color:const Color(0xffF6BE8D)
                            ),
                            child: IconButton(onPressed: (){}, icon:const Icon(Icons.shopping_bag_outlined,size: 18.0,)))
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left:20.0,top:10.0),
                padding: const EdgeInsets.only(top:10.0),
                height:225,
                width:160,
                decoration:BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(child: Image(image: AssetImage('images/Plant10.png'),height: 150,)),
                    const Padding(
                      padding:EdgeInsets.only(left:18.0,top:5.0),
                      child: Text('Schefflera',style:TextStyle(fontSize:16.0)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const  Padding(
                          padding: EdgeInsets.only(left:18.0),
                          child: Text('\$120',style:TextStyle(fontSize:16.0)),
                        ),
                        Container(
                            margin:const EdgeInsets.only(right:10.0),
                            height:35.0,
                            width:35.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color:const Color(0xffF6BE8D)
                            ),
                            child: IconButton(onPressed: (){}, icon:const Icon(Icons.shopping_bag_outlined,size: 18.0,)))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left:20.0,top:10.0),
                padding: const EdgeInsets.only(top:10.0),
                height:225,
                width:160,
                decoration:BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(child: Image(image: AssetImage('images/Plant25.png'),height: 150,)),
                    const Padding(
                      padding: EdgeInsets.only(left:18.0,top:5.0),
                      child: Text('Cactus',style:TextStyle(fontSize:16.0)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left:18.0),
                          child: Text('\$50',style:TextStyle(fontSize:16.0)),
                        ),
                        Container(
                            margin: const EdgeInsets.only(right:10.0),
                            height:35.0,
                            width:35.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color:const Color(0xffF6BE8D)
                            ),
                            child: IconButton(onPressed: (){}, icon:const Icon(Icons.shopping_bag_outlined,size: 18.0,)))
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left:20.0,top:10.0),
                padding: const EdgeInsets.only(top:10.0),
                height:225,
                width:160,
                decoration:BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const  Center(child: Image(image: AssetImage('images/Plant15.png'),height: 150,)),
                    const Padding(
                      padding:  EdgeInsets.only(left:18.0,top:5.0),
                      child: Text('Bigleaf',style:TextStyle(fontSize:16.0)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const  Padding(
                          padding:EdgeInsets.only(left:18.0),
                          child: Text('\$100',style:TextStyle(fontSize:16.0)),
                        ),
                        Container(
                            margin:const EdgeInsets.only(right:10.0),
                            height:35.0,
                            width:35.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color:const Color(0xffF6BE8D)
                            ),
                            child: IconButton(onPressed: (){}, icon:const Icon(Icons.shopping_bag_outlined,size: 18.0,)))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      )
  );
}