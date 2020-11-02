import 'package:flutter/material.dart';
import 'bloc.dart';

class Provider extends InheritedWidget {
  final bloc = Bloc();
  Provider({Key key, this.child}) : super(key: key, child: child);

  final Widget child;

  static Provider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Provider>();
  }

  static Bloc getBloc(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Provider>().bloc;
  }

  @override
  bool updateShouldNotify(Provider oldWidget) {
    return true;
  }
}
