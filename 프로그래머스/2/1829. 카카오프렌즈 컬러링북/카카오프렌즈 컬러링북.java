import java.util.LinkedList;
import java.util.Queue;

class Solution {
    int[] dx = {-1, 1, 0, 0};
    int[] dy = {0, 0, -1, 1};
    boolean[][] visited;
    int[][] picture;
    int n, m;

    public int[] solution(int m, int n, int[][] picture) {
        this.m = m;
        this.n = n;
        this.picture = picture;
        visited = new boolean[m][n];
        
        int numberOfArea = 0;
        int maxSizeOfOneArea = 0;

        for (int i = 0; i < m; i++) {
            for (int j = 0; j < n; j++) {
                if (!visited[i][j] && picture[i][j] != 0) {
                    maxSizeOfOneArea = Math.max(maxSizeOfOneArea, bfs(i, j, picture[i][j]));
                    numberOfArea++;
                }
            }
        }

        int[] answer = new int[2];
        answer[0] = numberOfArea;
        answer[1] = maxSizeOfOneArea;
        return answer;
    }

    private int bfs(int x, int y, int color) {
        Queue<int[]> queue = new LinkedList<>();
        queue.offer(new int[]{x, y});
        visited[x][y] = true;
        int areaSize = 1;

        while (!queue.isEmpty()) {
            int[] point = queue.poll();
            for (int i = 0; i < 4; i++) {
                int nx = point[0] + dx[i];
                int ny = point[1] + dy[i];
                
                if (nx >= 0 && nx < m && ny >= 0 && ny < n && !visited[nx][ny] && picture[nx][ny] == color) {
                    queue.offer(new int[]{nx, ny});
                    visited[nx][ny] = true;
                    areaSize++;
                }
            }
        }
        return areaSize;
    }
}