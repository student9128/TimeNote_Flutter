import 'package:intl/intl.dart';

class Dateutils {
  void formatDate(String inputDate,String formatType) {
    // implementation

  }
}
extension DateFormatString on String{
 String formatDate([String pattern = 'yyyy-MM-dd']) {
    try {
      // DateTime.parse 支持 ISO 8601 格式
      DateTime dt = DateTime.parse(this);
      return DateFormat(pattern).format(dt);
    } catch (e) {
      return this; // 解析失败返回原字符串
    }
  }
}
extension TimestampExtension on int {
  // 将毫秒转为 yyyy-MM-dd 字符串
  String formatDate([String pattern = 'yyyy-MM-dd']) {
    final date = DateTime.fromMillisecondsSinceEpoch(this);
    return DateFormat(pattern).format(date);
  }

  // 计算距离现在的剩余天数
  int get daysUntil {
    final target = DateTime.fromMillisecondsSinceEpoch(this);
    final now = DateTime.now();
    return target.difference(now).inDays;
  }
}
