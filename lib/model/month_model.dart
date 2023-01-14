class MonthName {
  final List<String> _monthName = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',  
    'November',
    'December',
  ];

  String getMonthName(int month) {
    return _monthName.elementAt(month - 1);
  }
}
