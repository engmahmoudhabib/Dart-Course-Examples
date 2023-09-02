// Named Constuctor such as fromJson
// ignore_for_file: unused_local_variable

class Converter {
  String? name;
  Converter.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    print('Value has been set to Name');
  }
}



void main() {
  Converter converter = Converter.fromJson({'name':'Mahmoud'});
}
