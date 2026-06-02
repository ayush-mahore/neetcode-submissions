class Solution {
    public int trap(int[] height) {
        int l = 0;
        int r = height.length-1;
        int maxL = height[l];
        int maxR = height[r];

        int res = 0;
        while (l < r){
            if (maxL < maxR){
                l += 1;
                maxL = Math.max(height[l], maxL);
                res += maxL - height[l];
            }else{
                r -= 1;
                maxR = Math.max(height[r], maxR);
                res += maxR - height[r];
            }
        }
        return res;
    }
}
