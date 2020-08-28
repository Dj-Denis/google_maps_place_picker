import 'package:flutter/cupertino.dart';
import 'package:google_maps_place_picker/src/autocomplete_search.dart';

class SearchBarController extends ChangeNotifier {
  AutoCompleteSearchState _autoCompleteSearch;

  attach(AutoCompleteSearchState searchWidget) {
    _autoCompleteSearch = searchWidget;
  }

  /// Just clears text.
  clear() {
    if (_autoCompleteSearch != null) _autoCompleteSearch.clearText();
  }

  /// Clear and remove focus (Dismiss keyboard)
  reset() {
    if (_autoCompleteSearch != null) _autoCompleteSearch.resetSearchBar();
  }

  clearOverlay() {
    if (_autoCompleteSearch != null) _autoCompleteSearch.clearOverlay();
  }
}
