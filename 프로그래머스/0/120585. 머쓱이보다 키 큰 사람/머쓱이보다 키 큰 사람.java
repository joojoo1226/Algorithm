class Solution {
    public int solution(int[] array, int height) {
        int result = 0;
        
        for(int arr: array) {
            if(height < arr) {
                result++;
            }
        }
        
        return result;
    }
}