import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'file:///C:/projects/flutterbloc/flutterbloc/lib/CounterPackage/counter/CounterObserver.dart';
import 'app.dart';

void main() {
  Bloc.observer=CounterObserver();
  runApp( CounterApp());
}

