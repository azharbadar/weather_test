import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:weather_app/controller/homecontroller.dart';
import 'package:weather_app/utilis/colors.dart';

class home_view extends StatefulWidget {
  const home_view({super.key});

  @override
  State<home_view> createState() => _home_viewState();
}

class _home_viewState extends State<home_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: selectcolor().search_bg_color,
      appBar: AppBar(
        backgroundColor: selectcolor().transparent,
        elevation: 0.0,
        title: Text(
          "Weather",
          style: TextStyle(
            color: selectcolor().white,
            fontSize: MediaQuery.of(context).size.height * 0.03,
          ),

        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.menu))
        ],
      ),
      body: FutureBuilder(
        future: home_search(),
        builder: (context, AsyncSnapshot snapshot) {
          if(snapshot.hasData)
          {
            return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20,left: 20),
            child: SizedBox(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                  // borderRadius: BorderRadius.circular(40),
                    
                  ),
                  enabledBorder:OutlineInputBorder(borderSide:BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(40),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  prefix: const Icon(Icons.search,   color: Colors.white,),
                  suffix: const Icon(Icons.turn_right_outlined,color: Colors.white,),
                ),
              ),
            ),
          ),
      
        const SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.only(right: 20,left: 20),
            child: Container(
              height: 120,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 90, 81, 151),
                borderRadius: BorderRadius.only(
                topRight: Radius.circular(60)
                ),
              ),
              child:  ListTile(
                title: const Text("31.90000",style: TextStyle(color: Colors.white,fontSize: 34),),
                subtitle: const Text("Karachi,PK",style: TextStyle(color: Colors.white,fontSize: 20),),
                trailing: Image.asset("weather_vector_1.png",
                width: 100,
                height: 200,
                fit:BoxFit.fill
               ),
              ),
            ),
          ),
      
          //  Padding(
          //   padding: const EdgeInsets.only(right: 20,left: 20),
          //   child: Container(
          //     height: 120,
          //     decoration: const BoxDecoration(
          //       color: Color.fromARGB(255, 90, 81, 151),
          //       borderRadius: BorderRadius.only(
          //       topRight: Radius.circular(60)
          //       ),
          //     ),
          //     child:  ListTile(
          //       title: const Text("31.90000",style: TextStyle(color: Colors.white,fontSize: 34),),
          //       subtitle: const Text("Karachi,PK",style: TextStyle(color: Colors.white,fontSize: 20),),
          //      trailing: Image.asset("weather_vector_1.png",
          //         width: 100,
          //         height: 200,
          //         fit:BoxFit.fill
          //      ),
          //     ),
          //   ),
          // ),
      
          //  Padding(
          //   padding: const EdgeInsets.only(right: 20,left: 20),
          //   child: Container(
          //     height: 120,
          //     decoration: const BoxDecoration(
          //       color: Color.fromARGB(255, 90, 81, 151),
          //       borderRadius: BorderRadius.only(
          //       topRight: Radius.circular(60)
          //       ),
          //     ),
          //     child:  ListTile(
          //       title: const Text("31.90000",style: TextStyle(color: Colors.white,fontSize: 34),),
          //       subtitle: const Text("Karachi,PK",style: TextStyle(color: Colors.white,fontSize: 20),),
          //      trailing: Image.asset("weather_vector_1.png",
          //         width: 100,
          //         height: 200,
          //         fit:BoxFit.fill
          //      ),
          //     ),
          //   ),
          // ),
        ],
      );
                                    
          }
           else
          {
                              return const CircularProgressIndicator();
          }
        },
        )
    
    );
  }
}