class ServiceModel {
  final String name;
  final String icon;

  const ServiceModel({
    required this.name,
    required this.icon,
  });
}

const services = [
  ServiceModel(name: 'Aadhaar Services', icon: '🪪'),
  ServiceModel(name: 'PAN Card', icon: '💳'),
  ServiceModel(name: 'Voter ID', icon: '🗳️'),
  ServiceModel(name: 'Ration Card', icon: '📋'),
  ServiceModel(name: 'Caste & Income', icon: '📄'),
  ServiceModel(name: 'Birth & Death Certificate', icon: '📜'),
  ServiceModel(name: 'Scholarship', icon: '🎓'),
  ServiceModel(name: 'Government Schemes', icon: '🏛️'),
  ServiceModel(name: 'Online Form Filling', icon: '📝'),
  ServiceModel(name: 'Print / Scan / Xerox', icon: '🖨️'),
];
