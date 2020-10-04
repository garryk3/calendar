part 'tables.dart';
part 'inserts.dart';
part 'selects.dart';
part 'deletes.dart';

/// attached db calibre
const String calibreDbName = 'CalibreDb';

/// table AppInfo
const String tableAppSettings = 'AppSettings';
const String tableCalibreBooks = '$calibreDbName.books';
const String tableCalibreAuthors = '$calibreDbName.authors';
const String tableCalibreBooksLangLinks = '$calibreDbName.books_languages_link';
const String tableCalibreLang = '$calibreDbName.languages';
const String tableCalibreBooksTagsLink = '$calibreDbName.books_tags_link';
const String tableCalibreTags = '$calibreDbName.tags';
const String tableCalibreRatings = '$calibreDbName.ratings';
const String tableCalibreBooksRatingsLink = '$calibreDbName.books_ratings_link';

/// columns
const String calibreColumnName = 'calibre';