void main() {
  print(isRepeated([1, 2, 3, 4, 1]));
  print(isRepeated([5, 6, 7, 8, 9]));
}

bool isRepeated(List<int> numbers) {
  for (int i = 0; i < numbers.length; i++) {
    for (int j = i + 1; j < numbers.length; j++) {
      if (numbers[i] == numbers[j]) {
        return true;
      }
    }
  }
  return false;
}
