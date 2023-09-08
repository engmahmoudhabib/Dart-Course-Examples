abstract class API {
  //* ---- Static Members don't inherent ---- *//
  static String baseURL = 'https://www.google.com';
  static String getBaseURL() {
    return API.baseURL;
  }

  //* ---- abstract fields , Methods ---- *//
  int? timeOut;
  int? getTimeOut();
}

class GetData implements API {
  /* @override
  final int? timeOut; */

  int? timeOut;

  GetData(int? ta) : timeOut = ta;

  @override
  int? getTimeOut() {
    return timeOut;
  }

  /* @override
  set timeOut(int? _timeOut) {
    timeOut = _timeOut;
  } */
}

void main() {
  GetData getData = GetData(44);
  //getData.timeOut = 88;
  print(getData.timeOut);
}
