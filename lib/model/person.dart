class Person {
  String name;
  String gender;

//<editor-fold desc="Data Methods">
  Person({
    required this.name,
    required this.gender,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Person &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          gender == other.gender);

  @override
  int get hashCode => name.hashCode ^ gender.hashCode;

  @override
  String toString() {
    return 'Person{' + ' name: $name,' + ' gender: $gender,' + '}';
  }

  Person copyWith({
    String? name,
    String? gender,
  }) {
    return Person(
      name: name ?? this.name,
      gender: gender ?? this.gender,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'gender': this.gender,
    };
  }

  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(
      name: map['name'] as String,
      gender: map['gender'] as String,
    );
  }

//</editor-fold>
}