class UserSettings {
  final bool
      useKilometers; // True if the user prefers kilometers, false for miles
  final bool darkMode; // True if dark mode is enabled

  UserSettings({
    required this.useKilometers,
    required this.darkMode,
  });

  // From JSON
  factory UserSettings.fromJson(Map<String, dynamic> json) {
    return UserSettings(
      useKilometers: json['useKilometers'],
      darkMode: json['darkMode'],
    );
  }

  // To JSON
  Map<String, dynamic> toJson() {
    return {
      'useKilometers': useKilometers,
      'darkMode': darkMode,
    };
  }
}
