class PersonModel {
  const PersonModel({
    required this.name,
    required this.lastName,
    required this.age,
    required this.country,
  });

  final String name;
  final String lastName;
  final int age;
  final String country;

  PersonModel copyWith(
    String? nameTmp,
    String? lastNameTmp,
    int? ageTmp,
    String? countryTmp,
  ) {
    return PersonModel(
      name: nameTmp ?? name,
      lastName: lastNameTmp ?? lastName,
      age: ageTmp ?? age,
      country: countryTmp ?? country,
    );
  }

  PersonModel clone() => copyWith(name, lastName, age, country);
}
