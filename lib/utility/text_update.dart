String upperCaseFirstCharacter(String param) {
  String newCharacter = "";

  for(var i = 0; i < param.length; i++) {
    if (i == 0) {
      newCharacter = param[i].toUpperCase();
    } else {
      newCharacter+=param[i];
    }
  }
  return newCharacter;
}