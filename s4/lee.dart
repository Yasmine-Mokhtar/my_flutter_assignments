void main() {

  List<int> nums = [1, 1, 1, 3, 3, 4, 3, 2, 4, 2];
  bool isRepeated = false;
  for (int i = 0; i < nums.length; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      if (nums[i] == nums[j]) {
        isRepeated = true;
        break;
      }
    }
    if (isRepeated) {
      break;
    }
  }
  print(isRepeated);
}

// LeetCode doesn't accept this solution

/*
  Given an integer array nums, return true if any value appears at least twice in the array,
  and return false if every element is distinct.

Example 1:
Input: nums = [1,2,3,1]
Output: true
Explanation:
The element 1 occurs at the indices 0 and 3.

Example 2:
Input: nums = [1,2,3,4]
Output: false
Explanation:
All elements are distinct.

Example 3:
Input: nums = [1,1,1,3,3,4,3,2,4,2]
Output: true
   */
