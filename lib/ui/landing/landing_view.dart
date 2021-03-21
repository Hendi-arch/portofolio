// ignore: import_of_legacy_library_into_null_safe
import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';
import 'package:my_portofolio/core/viewmodels/landing_view_model.dart';
import 'package:my_portofolio/ui/landing/local_widgets/landing_widgets.dart';

class LandingView extends StatelessWidget {
  @override
  Widget build(_) => ViewModelBuilder<LandingViewModel>.nonReactive(
      viewModelBuilder: () => LandingViewModel(),
      builder: (_, __, ___) =>
          Scaffold(body: Stack(children: [MyPicture(), TopLeftComponent(), TopRightComponent(), CardFolio()])));
}
