class AzkarDetailModel {
  final String content;
  final String reference;
  final String description;
  final String count;

  AzkarDetailModel({
    required this.content,
    required this.count,
    required this.reference,
    required this.description,
  });

  factory AzkarDetailModel.fromJson(Map<String, dynamic> json) {
    return AzkarDetailModel(
      content: json['content'] as String,
      count: json['count'] as String,
      reference: json['reference'] as String,
      description: json['description'] as String,
    );
  }
}
