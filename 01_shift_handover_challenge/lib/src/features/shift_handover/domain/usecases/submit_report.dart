import '../models/shift_report.dart';

class SubmitReport {
  const SubmitReport();

  Future<bool> call(ShiftReport report) async {
    await Future.delayed(const Duration(seconds: 2));
    return DateTime.now().second % 2 == 0;
  }
}
