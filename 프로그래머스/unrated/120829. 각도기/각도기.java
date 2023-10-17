class Solution {
    public int solution(int angle) {
        int x = 0;
        
        if(angle > 0 && angle < 90) {
            x = 1;
        } else if(angle == 90) {
            x = 2;
        } else if(angle > 90 && angle < 180) {
            x = 3;
        } else if(angle == 180) {
            x = 4;
        }
        
        return x;
    }
}