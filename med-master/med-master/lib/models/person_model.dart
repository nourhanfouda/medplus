class PersonModel {
  int id;
  String email;
  String name;
  String password;
  String imgeurl;
  int status;
  String address;
  String mobile;
  String role;

  PersonModel(
      {this.id,
      this.email,
      this.name,
      this.password,
      this.imgeurl,
      this.address,
      this.mobile,
        this.role,
      this.status = 0});
}
