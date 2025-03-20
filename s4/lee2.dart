void main() {
  Solution x = Solution();
  print(x.containsDuplicate([1, 2, 3, 1]));
  print(x.containsDuplicate([1, 2, 3, 4]));
  print(x.containsDuplicate([1, 1, 1, 3, 3, 4, 3, 2, 4, 2]));
}

class Solution {
  bool containsDuplicate(List<int> nums) {
    Set<int> seen = {};

    for (int num in nums) {
      if (seen.contains(num)) {
        return true;
      }
      seen.add(num);
    }
    return false;
  }
}

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
