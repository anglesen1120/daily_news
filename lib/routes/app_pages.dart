import 'package:daily_news/modules/detail/article/binding/article_binding.dart';
import 'package:daily_news/modules/detail/article/view/article_page.dart';
import 'package:daily_news/modules/detail/source/binding/source_binding.dart';
import 'package:daily_news/modules/detail/source/view/source_page.dart';
import 'package:daily_news/modules/home/binding/home_binding.dart';
import 'package:daily_news/modules/home/view/home_page.dart';
import 'package:daily_news/modules/person/binding/person_binding.dart';
import 'package:daily_news/modules/person/view/person_page.dart';
import 'package:daily_news/modules/search/binding/search_binding.dart';
import 'package:daily_news/modules/search/view/search_page.dart';
import 'package:daily_news/routes/app_routes.dart';
import 'package:get/get.dart';

final routePages = [
  GetPage(
    name: Routes.home,
    page: () => const HomePage(),
    binding: HomeBinding(),
  ),
  GetPage(
    name: Routes.search,
    page: () => const SearchPage(),
    binding: SearchBinding(),
  ),
  GetPage(
    name: Routes.person,
    page: () => const PersonPage(),
    binding: PersonBinding(),
  ),
  GetPage(
    name: Routes.article,
    page: () => const ArticlePage(),
    binding: ArticleBinding(),
  ),
  GetPage(
    name: Routes.source,
    page: () => const SourcePage(),
    binding: SourceBinding(),
  ),
];
