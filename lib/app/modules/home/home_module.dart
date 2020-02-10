import 'package:first_desafio/app/modules/home/home_controller.dart';
import 'package:first_desafio/app/modules/home/pages/itemPage/itemPage_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:first_desafio/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
        Router('/itemPage', child: (_, args) => ItemPagePage(imageLocation: args.data)),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
