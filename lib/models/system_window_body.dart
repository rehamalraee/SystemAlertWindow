import 'package:system_alert_window/models/system_window_decoration.dart';
import 'package:system_alert_window/models/system_window_margin.dart';
import 'package:system_alert_window/models/system_window_padding.dart';
import 'package:system_alert_window/models/system_window_text.dart';
import 'package:system_alert_window/system_alert_window.dart';
import 'package:system_alert_window/utils/commons.dart';
import 'package:video_player/video_player.dart';

class SystemWindowBody {
  List<EachRow> rows;
  SystemWindowPadding padding;
  SystemWindowDecoration decoration;
  VideoPlayerController _controller;

  SystemWindowBody({this.rows, this.padding, this.decoration, this._controller});

  Map<String, dynamic> getMap() {
    final Map<String, dynamic> map = <String, dynamic>{
      'rows': (rows == null)
          ? null
          : List<dynamic>.from(rows.map((x) => x?.getMap())),
      'padding': padding?.getMap(),
      'decoration': decoration?.getMap(),
        '_controller':_controller
    };
    return map;
  }
}

class EachRow {
  List<EachColumn> columns;
  SystemWindowPadding padding;
  SystemWindowMargin margin;
  ContentGravity gravity;
  SystemWindowDecoration decoration;
  VideoPlayerController _controller;
  EachRow(
      {this.columns, this.padding, this.margin, this.gravity, this.decoration,this._controller});

  Map<String, dynamic> getMap() {
    final Map<String, dynamic> map = <String, dynamic>{
      'columns': (columns == null)
          ? null
          : List<dynamic>.from(columns.map((x) => x?.getMap())),
      'padding': padding?.getMap(),
      'margin': margin?.getMap(),
      'gravity': Commons.getContentGravity(gravity),
      'decoration': decoration?.getMap(),
      '_controller':_controller
    };
    return map;
  }
}

class EachColumn {
  SystemWindowText text;
  SystemWindowPadding padding;
  SystemWindowMargin margin;
  SystemWindowDecoration decoration;
  VideoPlayerController _controller;
  
  EachColumn({this.text, this.padding, this.margin, this.decoration,this._controller});

  Map<String, dynamic> getMap() {
    final Map<String, dynamic> map = <String, dynamic>{
      'text': text?.getMap(),
      'padding': padding?.getMap(),
      'margin': margin?.getMap(),
      'decoration': decoration?.getMap(),
        '_controller':_controller
    };
    return map;
  }
}
