import 'package:character_sheet/core/column_element_position_enum.dart';
import 'package:character_sheet/presentation/shared_widgets/superellipse_vertical_list_item_decorator.dart';
import 'package:flutter/cupertino.dart';

class SuperelipseVerticalList extends StatelessWidget {
  static const double defaultBorderRadius = 10;
  // static const double defaultElementHeight = 26;
  static const double defaultIdent = 3;

  const SuperelipseVerticalList(
      {this.borderRadius = defaultBorderRadius,
      this.indent = defaultIdent,
      this.children = const <Widget>[],
      Key? key})
      : super(key: key);

  final double borderRadius;
  final double indent;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: children
            .asMap()
            .entries
            .map((entry) => SuperelipseVerticalListItemDecorator(
                  borderRadius: borderRadius,
                  columnPosition: children.length >
                          1 // TODO мож сделать по человечески?)
                      ? entry.key > 1
                          ? entry.key == children.length - 1
                              ? SuperelipseVerticalListItemPositionEnum.middle
                              : SuperelipseVerticalListItemPositionEnum.last
                          : SuperelipseVerticalListItemPositionEnum.first
                      : SuperelipseVerticalListItemPositionEnum.single,
                  child: entry.value,
                ))
            .toList());
  }
}
