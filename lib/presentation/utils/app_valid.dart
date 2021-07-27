
class AppValid {
  AppValid._();

  static validName() {
    return (value) {
      if (value == null || value.length == 0) {
        return 'valid_username';
      }
      return null;
    };
  }

  static validAge() {
    return (value) {
      if (value == null || value.length == 0) {
        return 'valid_age';
      } else if (int.tryParse(value)! < 18) {
        return 'Thang them bi dien';
      }
      return null;
    };
  }
}
