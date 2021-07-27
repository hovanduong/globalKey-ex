import 'package:globalkey_ex/presentation/base/base_viewmodel.dart';
import 'package:globalkey_ex/presentation/utils/app_valid.dart';

class LoginViewmodel extends BaseViewModel {
  initDa() {}

  validName() {
    return AppValid.validName();
  }

  valiedAge() {
    return AppValid.validAge();
  }
}
