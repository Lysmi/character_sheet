class AbilityModel {
  const AbilityModel(this.name, this.value);

  final String name;
  final int value;

  int getModifier()
  {
    return (value-10)~/2;
  }

  String getModifierToString()
  {
    int modifier = (value-10)~/2;
    String modifierString = modifier.toString();
    return modifier>=0?"+$modifierString":modifierString;
  }
}
