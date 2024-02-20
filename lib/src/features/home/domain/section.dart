enum SectionType {
  categories,
  brands,
  products,
}

class Section<T extends Object> {
  const Section({
    required this.id,
    required this.heading,
    required this.type,
    required this.data,
  });

  final String id;
  final String heading;
  final SectionType type;
  final List<T> data;
}
