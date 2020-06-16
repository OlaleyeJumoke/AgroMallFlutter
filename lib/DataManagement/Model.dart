class Customer {
    int id;
    String fullName, email, phoneNumber, homeAddress, farmName, farmAddress, longitude, latitude, picturePath;


    Customer({
        this.id,
        this.fullName, this.email, this.phoneNumber, this.homeAddress, this.farmName, this.farmAddress, this.longitude, this.latitude, this.picturePath}
    );

    int get gId => id;
    String get gFullName => fullName;
    String get gEmail => email;
    String get gPhoneNumber => phoneNumber;
    String get gHomeAddress => homeAddress;
    String get gPicturePath => picturePath;
    String get gFarmName => farmName;
    String get gFarmAddress => farmAddress;
    String get gLongitude => longitude;
    String get gLatitude => latitude;
    


    factory Customer.fromJson(Map<String, dynamic> data) => new Customer(
        id: data["id"],
        fullName: data["fullName"],
        email: data["email"],
        phoneNumber: data["phoneNumber"],
        homeAddress: data["homeAddress"],
        picturePath: data["picturePath"],
        farmName: data["farmName"],
        farmAddress: data["farmAddress"],
        longitude: data["longitude"],
        latitude: data["latitude"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "fullName": fullName,
        "email": email,
        "phoneNumber": phoneNumber,
        "homeAddress": homeAddress,
        "picturePath": picturePath,
        "farmName": farmName,
        "farmAddress": farmAddress,
        "longitude": longitude,
        "latitude": latitude,
    };
}