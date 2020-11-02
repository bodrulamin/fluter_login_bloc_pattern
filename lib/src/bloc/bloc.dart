import 'dart:async';
import 'package:rxdart/rxdart.dart' as rx;
import 'package:login_bloc/src/bloc/validator.dart';

class Bloc extends Object with Validators {
  final _email = rx.BehaviorSubject<String>();
  final _password = rx.BehaviorSubject<String>();

  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);

  Stream<bool> get submitValid =>
      rx.CombineLatestStream.combine2(email, password, (a, b) => true);

  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  submit() {
    final validEmail = _email.value;
    final validPassword = _password.value;
    print('email is $validEmail , password is $validPassword');
  }

  dispose() {
    _email.close();
    _password.close();
  }
}
