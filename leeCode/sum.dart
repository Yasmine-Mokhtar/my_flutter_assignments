void main(){
}

List<int> twoSum(List<int> nums, int target) {
  List<int> index = [];

  for (int i = 0; i < nums.length - 1; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      if (nums[i] + nums[j] == target) {
        index = [i, j];
        return index;
      }
    }
  }

  return index;
}

// ============================================================
List<int> twoSum1(List<int> nums, int target) {
  List<int> index = [];
  for(int i = 0; i < nums.length; i++){
    for (int j = i + 1; j < nums.length; j++){
      if(nums[i] + nums[j] == target){
        index = [i, j];
        return index;
      }
    }
  }
  return index;
}