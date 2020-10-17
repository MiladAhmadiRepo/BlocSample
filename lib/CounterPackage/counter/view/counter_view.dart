import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../counter.dart';

class CounterView extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {
   final textTheme=Theme.of(context).textTheme;
   return Scaffold(
     appBar: AppBar(title: Text("Counter"),),
     body: Center(
       child: BlocBuilder(
         builder: (context, state) {
           return Text("$state",style: textTheme.headline1,);
         },
       ),
     ),
     floatingActionButton: Column(
       mainAxisAlignment: MainAxisAlignment.end,
       crossAxisAlignment: CrossAxisAlignment.end,
       children: [
         FloatingActionButton(
           key:  Key("counterView_increment_floatingActionButton"),
           child:  Icon(Icons.add),
           onPressed: (){
             context.bloc<CounterCubit>().increment();
           },
         ),
         SizedBox(height: 10,),
         FloatingActionButton(
           key:  Key("counterView_decrement_floatingActionButton"),
           child:  Icon(Icons.remove),
           onPressed: (){
             context.bloc<CounterCubit>().decrement();
           },
         ),
       ],
     ),
   );
  }

}