import '../models/shift_report.dart';

class GetShiftReport {
  const GetShiftReport();

  Future<ShiftReport> call(String caregiverId) async {
    return ShiftReport(
      id: 'shift-123',
      caregiverId: caregiverId,
      startTime: DateTime.now().subtract(const Duration(hours: 8)),
    );
  }
}
