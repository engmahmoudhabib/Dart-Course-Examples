//? we use mixin to reuse the same code in multiple classes
//? mixin does't have a constructr
//? if we want to use mixin with specific class we can use on keyword
mixin APIFunctions {
  Object? getDataFromApi({Object? request}) {
    return String;
  }
}

//? this mixin will be only used with classes that extends MyBiGapi
mixin API  on MyBigAPI{
  Object? getDataFromApi({Object? request}) {
    return Null;
  }
}

class MyBigAPI {
  void run() {
    print('run');
  }
}

//? if we don't extend MyBigAPI we'll get an error 
//? because API function works only with classes that extends MyBigAPI

class GetData extends MyBigAPI with APIFunctions, API {}

void main() {
  GetData getData = GetData();
  print(getData.getDataFromApi());
}
