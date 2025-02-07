import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(OneState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: state.themeColor,
      title: Text('one'),
    ),
    body: ListView(
      children: <Widget>[
        _childView(state, viewService),
        _achildView(state, viewService),
      ],
    ),
  );
}

Align _childView(OneState state, ViewService viewService) {
  return Align(child: viewService.buildComponent('ChildViewComponent'));
}

Align _achildView(OneState state, ViewService viewService) {
  return Align(child: viewService.buildComponent('AchildViewComponent'));
}
