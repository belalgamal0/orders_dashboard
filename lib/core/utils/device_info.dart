import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

enum FormFactorType { monitor, smallPhone, largePhone, tablet }

class DeviceScreen {
  static bool isWeb() => kIsWeb;
  static FormFactorType get(BuildContext context) {
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    if (shortestSide <= 300) return FormFactorType.smallPhone;
    if (shortestSide <= 600) return FormFactorType.largePhone;
    if (shortestSide <= 900) return FormFactorType.tablet;
    return FormFactorType.monitor;
  }

  static bool isPhone(BuildContext context) =>
      isSmallPhone(context) || isLargePhone(context);
  static bool isTablet(BuildContext context) =>
      get(context) == FormFactorType.tablet;
  static bool isMonitor(BuildContext context) =>
      get(context) == FormFactorType.monitor;
  static bool isSmallPhone(BuildContext context) =>
      get(context) == FormFactorType.smallPhone;
  static bool isLargePhone(BuildContext context) =>
      get(context) == FormFactorType.largePhone;
}
