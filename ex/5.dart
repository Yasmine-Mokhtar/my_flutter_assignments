void main() {
  print(removeDuplicates([1, 2, 2, 3, 4, 4, 5])); // Output: [1, 2, 3, 4, 5]
  print(removeDuplicates([10, 20, 10, 30, 20, 40])); // Output: [10, 20, 30, 40]
  print(removeDuplicates([7, 7, 7, 7])); // Output: [7]
}

List<int> removeDuplicates(List<int> numbers) {
  List<int> uniqueItems = [];
  for (var item in numbers) {
    if (!uniqueItems.contains(item)) {
      uniqueItems.add(item);
    }
  }
  return uniqueItems;
}
