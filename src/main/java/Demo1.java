import java.util.Arrays;

public class Demo1 {
    public static double main(int[] nums) throws Exception {
        if(nums==null || nums.length == 0){
            throw new Exception("参数为null，或没有内容");
        }

        Arrays.sort(nums);
        int len = nums.length;
        if(len % 2 == 0){
            return (nums[len / 2] + nums[len / 2 - 1]  + 0.0)  / 2.0;
        }else{
            return nums[len / 2];
        }

    }
}
