abstract class API {
  final String baseURL;
  API({required this.baseURL,});
}



class GetData implements API{
  
  @override
  String get baseURL => '';

}
