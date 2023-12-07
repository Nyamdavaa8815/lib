import 'package:firebase_auth/firebase_auth.dart';

import '../../logic/models/error_model.dart';

ErrorModel errorException(e) {
  try {
    throw e;
  } on FirebaseAuthException catch (e) {
    return ErrorModel(
      code: e.code,
      message: e.message ?? 'Unknown Auth Error',
      plugin: e.plugin,
    );
  } on FirebaseException catch (e) {
    return ErrorModel(
      code: e.code,
      message: e.message ?? 'Unknown Firebase Error',
      plugin: e.plugin,
    );
  } catch (e) {
    return ErrorModel(
      code: 'Exception',
      message: e.toString(),
      plugin: 'flutter-error/server-error',
    );
  }
}
