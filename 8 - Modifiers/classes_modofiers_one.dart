base class API {
  String? baseURL;
  API(this.baseURL);
}



base class ExtendedAPI extends API{
  ExtendedAPI(super.baseURL);
}


base class ExtendedAPI2 extends ExtendedAPI implements API{
  ExtendedAPI2(super.baseURL);
}

