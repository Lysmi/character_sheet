import 'package:character_sheet/presentation/shared_widgets/superellipse_vertical_list_item_decorator.dart';
import 'package:flutter/material.dart';

class SuperellipseVerticalListItem extends Container {
  SuperellipseVerticalListItem({
    Key? key,
    AlignmentGeometry? alignment,
    EdgeInsetsGeometry? padding,
    Color? color,
    SuperellipseVerticalListItemDecoration? decoration,
    Decoration? foregroundDecoration,
    this.width,
    this.height,
    BoxConstraints? constraints,
    EdgeInsetsGeometry? margin,
    Matrix4? transform,
    AlignmentGeometry? transformAlignment,
    Widget? child,
    Clip clipBehavior = Clip.none,
  }) : super(
            key: key,
            alignment: alignment,
            padding: padding,
            color: color,
            decoration: decoration ?? SuperellipseVerticalListItemDecoration(),
            foregroundDecoration: foregroundDecoration,
            width: width,
            height: height,
            constraints: constraints,
            margin: margin,
            transform: transform,
            transformAlignment: transformAlignment,
            child: child,
            clipBehavior: clipBehavior) {
    decorationSettings =
        decoration; // TODO это тоже должно уйти с появлением гигабилдера
  }

  final double? width;
  final double? height;
  SuperellipseVerticalListItemDecoration?
      decorationSettings; // TODO пока так, что бы иметь возможность вытащить это в superellipseCerticalList
  // TODO надо изменить логику на билдер, хуилдер
}
