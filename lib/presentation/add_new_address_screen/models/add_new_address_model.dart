/// data : {"customerAddressCreate":{"customerAddress":{"id":"gid://shopify/MailingAddress/8023283269844?model_name=CustomerAddress&customer_access_token=9Lp3-OdboAz5ujPaizCBVJq2vuXvEm_Dk4VzHX18wZSeELG4luBrYyAc9v-Xw5kRXjRFXdP7skKa2P78wOtLN8Su-DAW-gnAARMYgkkfwzGSnZKTRyriGSmUokbjjhYis0jA0Atlf4ToNYferjMw1QiKjmZovC85F2jfOYAsOaZObc_J0WaktvRdiHLsJn2-wJwU2vsvtV8a7nmOw-cqXPC-QciAJCLnQo8aFH_9AaffBo5c2clfCCL-eExUFBpl","address1":"23232","address2":"","city":"","company":"","country":"","firstName":"test0909","lastName":"3232","phone":"","province":"","zip":""},"customerUserErrors":[]}}

class AddNewAddressModel {
  AddNewAddressModel({
      this.data,});

  AddNewAddressModel.fromJson(dynamic json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  Data? data;
AddNewAddressModel copyWith({  Data? data,
}) => AddNewAddressModel(  data: data ?? this.data,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }

}

/// customerAddressCreate : {"customerAddress":{"id":"gid://shopify/MailingAddress/8023283269844?model_name=CustomerAddress&customer_access_token=9Lp3-OdboAz5ujPaizCBVJq2vuXvEm_Dk4VzHX18wZSeELG4luBrYyAc9v-Xw5kRXjRFXdP7skKa2P78wOtLN8Su-DAW-gnAARMYgkkfwzGSnZKTRyriGSmUokbjjhYis0jA0Atlf4ToNYferjMw1QiKjmZovC85F2jfOYAsOaZObc_J0WaktvRdiHLsJn2-wJwU2vsvtV8a7nmOw-cqXPC-QciAJCLnQo8aFH_9AaffBo5c2clfCCL-eExUFBpl","address1":"23232","address2":"","city":"","company":"","country":"","firstName":"test0909","lastName":"3232","phone":"","province":"","zip":""},"customerUserErrors":[]}

class Data {
  Data({
      this.customerAddressCreate,});

  Data.fromJson(dynamic json) {
    customerAddressCreate = json['customerAddressCreate'] != null ? CustomerAddressCreate.fromJson(json['customerAddressCreate']) : null;
  }
  CustomerAddressCreate? customerAddressCreate;
Data copyWith({  CustomerAddressCreate? customerAddressCreate,
}) => Data(  customerAddressCreate: customerAddressCreate ?? this.customerAddressCreate,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (customerAddressCreate != null) {
      map['customerAddressCreate'] = customerAddressCreate?.toJson();
    }
    return map;
  }

}

/// customerAddress : {"id":"gid://shopify/MailingAddress/8023283269844?model_name=CustomerAddress&customer_access_token=9Lp3-OdboAz5ujPaizCBVJq2vuXvEm_Dk4VzHX18wZSeELG4luBrYyAc9v-Xw5kRXjRFXdP7skKa2P78wOtLN8Su-DAW-gnAARMYgkkfwzGSnZKTRyriGSmUokbjjhYis0jA0Atlf4ToNYferjMw1QiKjmZovC85F2jfOYAsOaZObc_J0WaktvRdiHLsJn2-wJwU2vsvtV8a7nmOw-cqXPC-QciAJCLnQo8aFH_9AaffBo5c2clfCCL-eExUFBpl","address1":"23232","address2":"","city":"","company":"","country":"","firstName":"test0909","lastName":"3232","phone":"","province":"","zip":""}
/// customerUserErrors : []

class CustomerAddressCreate {
  CustomerAddressCreate({
      this.customerAddress, 
      this.customerUserErrors,});

  CustomerAddressCreate.fromJson(dynamic json) {
    customerAddress = json['customerAddress'] != null ? CustomerAddress.fromJson(json['customerAddress']) : null;
    if (json['customerUserErrors'] != null) {
      customerUserErrors = [];
      json['customerUserErrors'].forEach((v) {
        customerUserErrors?.add(v);
      });
    }
  }
  CustomerAddress? customerAddress;
  List<dynamic>? customerUserErrors;
CustomerAddressCreate copyWith({  CustomerAddress? customerAddress,
  List<dynamic>? customerUserErrors,
}) => CustomerAddressCreate(  customerAddress: customerAddress ?? this.customerAddress,
  customerUserErrors: customerUserErrors ?? this.customerUserErrors,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (customerAddress != null) {
      map['customerAddress'] = customerAddress?.toJson();
    }
    if (customerUserErrors != null) {
      map['customerUserErrors'] = customerUserErrors?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : "gid://shopify/MailingAddress/8023283269844?model_name=CustomerAddress&customer_access_token=9Lp3-OdboAz5ujPaizCBVJq2vuXvEm_Dk4VzHX18wZSeELG4luBrYyAc9v-Xw5kRXjRFXdP7skKa2P78wOtLN8Su-DAW-gnAARMYgkkfwzGSnZKTRyriGSmUokbjjhYis0jA0Atlf4ToNYferjMw1QiKjmZovC85F2jfOYAsOaZObc_J0WaktvRdiHLsJn2-wJwU2vsvtV8a7nmOw-cqXPC-QciAJCLnQo8aFH_9AaffBo5c2clfCCL-eExUFBpl"
/// address1 : "23232"
/// address2 : ""
/// city : ""
/// company : ""
/// country : ""
/// firstName : "test0909"
/// lastName : "3232"
/// phone : ""
/// province : ""
/// zip : ""

class CustomerAddress {
  CustomerAddress({
      this.id, 
      this.address1, 
      this.address2, 
      this.city, 
      this.company, 
      this.country, 
      this.firstName, 
      this.lastName, 
      this.phone, 
      this.province, 
      this.zip,});

  CustomerAddress.fromJson(dynamic json) {
    id = json['id'];
    address1 = json['address1'];
    address2 = json['address2'];
    city = json['city'];
    company = json['company'];
    country = json['country'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    phone = json['phone'];
    province = json['province'];
    zip = json['zip'];
  }
  String? id;
  String? address1;
  String? address2;
  String? city;
  String? company;
  String? country;
  String? firstName;
  String? lastName;
  String? phone;
  String? province;
  String? zip;
CustomerAddress copyWith({  String? id,
  String? address1,
  String? address2,
  String? city,
  String? company,
  String? country,
  String? firstName,
  String? lastName,
  String? phone,
  String? province,
  String? zip,
}) => CustomerAddress(  id: id ?? this.id,
  address1: address1 ?? this.address1,
  address2: address2 ?? this.address2,
  city: city ?? this.city,
  company: company ?? this.company,
  country: country ?? this.country,
  firstName: firstName ?? this.firstName,
  lastName: lastName ?? this.lastName,
  phone: phone ?? this.phone,
  province: province ?? this.province,
  zip: zip ?? this.zip,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['address1'] = address1;
    map['address2'] = address2;
    map['city'] = city;
    map['company'] = company;
    map['country'] = country;
    map['firstName'] = firstName;
    map['lastName'] = lastName;
    map['phone'] = phone;
    map['province'] = province;
    map['zip'] = zip;
    return map;
  }

}