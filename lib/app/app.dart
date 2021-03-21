import 'package:my_portofolio/ui/landing/landing_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
    routes: [CupertinoRoute(page: LandingView, initial: true)],
    dependencies: [LazySingleton(classType: NavigationService)])
class App {
  /** This class has no purpose besides housing the annotation that generates the required functionality **/
}
