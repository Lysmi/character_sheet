import 'package:character_sheet/core/column_element_position_enum.dart';
import 'package:character_sheet/presentation/shared_widgets/superellipse_vertical_list_item.dart';
import 'package:character_sheet/presentation/shared_widgets/superellipse_vertical_list_item_decorator.dart';
import 'package:flutter/cupertino.dart';

class SuperelipseVerticalList extends Column {
  static const double defaultBorderRadiusValue = 10;
  // static const double defaultElementHeight = 26;
  static const double defaultIdent = 3;

  SuperelipseVerticalList({
    Key? key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
    List<SuperellipseVerticalListItem> children =
        const <SuperellipseVerticalListItem>[],

    /// Будут ли элемента списка скругляться согласно логики этого виджета, хз
    bool automaticItemBorderRadiusSelection = true,
  }) : super(
            // TODO это определнно нужно сделать через билдер с особым юзеджем иначе кринж пересозданий -оптимизация за такое отдельный котёл
            key: key,
            mainAxisAlignment: mainAxisAlignment,
            mainAxisSize: mainAxisSize,
            crossAxisAlignment: crossAxisAlignment,
            textDirection: textDirection,
            verticalDirection: verticalDirection,
            textBaseline: textBaseline,
            children: automaticItemBorderRadiusSelection
                ? children
                    .asMap()
                    .entries
                    .map((entry) => SuperellipseVerticalListItem(
                          key: entry.value.key,
                          alignment: entry.value.alignment,
                          padding: entry.value.padding,
                          color: entry.value.color,
                          decoration: SuperellipseVerticalListItemDecoration(
                              color: entry.value.decorationSettings?.color,
                              image: entry.value.decorationSettings?.image,
                              border: entry.value.decorationSettings?.border,
                              borderRadiusValue: entry.value.decorationSettings
                                      ?.borderRadiusValue ??
                                  SuperelipseVerticalList
                                      .defaultBorderRadiusValue,
                              boxShadow:
                                  entry.value.decorationSettings?.boxShadow,
                              gradient:
                                  entry.value.decorationSettings?.gradient,
                              shape: entry.value.decorationSettings?.shape ??
                                  BoxShape.rectangle,
                              backgroundBlendMode: entry.value
                                  .decorationSettings?.backgroundBlendMode),
                          foregroundDecoration:
                              entry.value.foregroundDecoration,
                          width: entry.value.width,
                          height: entry.value.height,
                          constraints: entry.value.constraints,
                          margin: entry.value.margin,
                          transform: entry.value.transform,
                          transformAlignment: entry.value.transformAlignment,
                          child: entry.value.child,
                          clipBehavior: entry.value.clipBehavior,
                        ))
                    .toList()
                : children);
}
