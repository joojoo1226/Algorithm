class Solution {
    public String solution(String s) {
        String[] strNumbers = s.split(" ");
        
        int[] numbers = new int[strNumbers.length];
        for (int i = 0; i < strNumbers.length; i++) {
            numbers[i] = Integer.parseInt(strNumbers[i]);
        }
        
        int minVal = numbers[0];
        int maxVal = numbers[0];
        
        for (int num : numbers) {
            if (num < minVal) {
                minVal = num;
            }
            if (num > maxVal) {
                maxVal = num;
            }
        }
        
        return minVal + " " + maxVal;
    }
}