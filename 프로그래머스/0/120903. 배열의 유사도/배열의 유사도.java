import java.util.*;

class Solution {
    public int solution(String[] s1, String[] s2) {
        int cnt = 0;
        
        Set<String> set1 = new HashSet<>();
        for(String str : s1) {
            set1.add(str);
        }
        
        for(String str : s2) {
            if(set1.contains(str)) {
                cnt++;
            }
        }
        
        return cnt;
    }
}