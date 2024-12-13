class UserModel {
  UserModel({
    required this.fullName,
    required this.phoneNumber,
    required this.id,
    required this.email,
    required this.password,
    required this.businessName,
    required this.zipcode,
    this.npi = 'None',
    this.blockList = const [],
  });

  UserModel.dummy()
      : fullName = 'Tabish Bin Tahir',
        phoneNumber = '+123456789611',
        id = 'Verified',
        npi = 'None',
        email = 'tabish@m2m.com',
        password = '*********',
        businessName = 'Mind2Matter',
        zipcode = '1001',
        blockList = ['Spongebob', 'Patrick'];

  String fullName;
  String phoneNumber;
  String id;
  String npi;
  String email;
  String password;
  String businessName;
  String zipcode;
  List<String> blockList;


  UserModel copyWith({
    String? fullName,
    String? phoneNumber,
    String? id,
    String? email,
    String? password,
    String? businessName,
    String? zipcode,
    String? npi,
    List<String>? blockList,
  }) {
    return UserModel(
      fullName: fullName ?? this.fullName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      id: id ?? this.id,
      email: email ?? this.email,
      password: password ?? this.password,
      businessName: businessName ?? this.businessName,
      zipcode: zipcode ?? this.zipcode,
      npi: npi ?? this.npi,
      blockList: blockList ?? this.blockList,
    );
  }
}
