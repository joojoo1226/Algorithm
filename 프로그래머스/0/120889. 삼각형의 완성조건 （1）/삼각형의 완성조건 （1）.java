import java.util.Arrays;

class Solution {
    public int solution(int[] sides) {
        Arrays.sort(sides);
        
        int max = sides[2];
        
        return (max < sides[0] + sides[1]) ? 1 : 2;
    }
}