class Validator {
  static String? validate(String? value, String currentField) {
    switch (currentField) {
      case 'Enter Name':
        return nameValidator(value);
      case 'Enter Age':
        return ageValidator(value);
      case 'Enter Department':
        return null;
      case 'Enter Phone Number':
        return phoneNumberValidator(value);
      case 'Enter Email ID':
        return emailValidator(value);
      default:
        return null;
    }
  }

  static String? nameValidator(String? value) {
    if (value != null && value.isEmpty) {
      return "Name can't be empty";
    }
    return null;
  }

  static String? emailValidator(String? value) {
    if (value != null && value.isEmpty) {
      return "Email can't be empty";
    } else if (!RegExp(r'^[\w-\.]+@([\w-\.]+\.)+[a-zA-Z]{2,}$')
        .hasMatch(value!)) {
      return "Enter valid Email ID";
    } else {
      return null;
    }
  }

  static String? phoneNumberValidator(String? value) {
    if (value != null && value.isEmpty) {
      return "Phone number can't be empty";
    } else if (!RegExp(r'^[0-9]{10}$').hasMatch(value!)) {
      return "Enter valid Phone number";
    }
    return null;
  }

  static String? ageValidator(String? value) {
    if (value != null && value.isEmpty) {
      return "Age can't be empty";
    } else if (!RegExp(r'^[0-9]{2}$').hasMatch(value!)) {
      return "Enter correct age";
    }
    return null;
  }
}
