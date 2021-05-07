class Validators {
  bool regexValidator(String value, String regex) {
    RegExp re = new RegExp(regex);
    if (re.hasMatch(value)) {
      return true;
    }
    return false;
  }
}