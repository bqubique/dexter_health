import 'dart:nativewrappers/_internal/vm/bin/vmservice_io.dart'
    as service_tests;
import 'dart:nativewrappers/_internal/vm/bin/vmservice_io.dart' as bloc_tests;
import 'dart:nativewrappers/_internal/vm/bin/vmservice_io.dart'
    as integration_tests;

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Unit Tests', () {
    service_tests.main();
    bloc_tests.main();
  });

  group('Integration Tests', () {
    integration_tests.main();
  });
}
