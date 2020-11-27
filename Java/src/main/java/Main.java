import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Main {

    public static void main(String[] args) {
        int[] procs = {1, 2, 3, 4, 5};
        List<int[]> procLtl = new ArrayList<>();

        for (int i = 1; i <= 5; i++) {
            for (int j = i + 1; j <= 5; j++) {
                for (int k = j + 1; k <= 5; k++) {
                    procLtl.add(new int[]{i, j, k});
                }
            }
        }
//        (proc1.state = critical & proc2.state = critical & proc3.state = critical)
        String collect = procLtl.stream()
                .map(ints -> " F (proc" + ints[0] + ".state = critical & proc" + ints[1] + ".state = critical & proc" + ints[2] + ".state = critical)")
                .collect(Collectors.joining(" \n| "));

        String collect1 = procLtl.stream()
                .map(ints -> " F (proc" + ints[0] + ".state = critical & proc" + ints[1] + ".state = critical & proc" + ints[2] + ".state != critical)")
                .collect(Collectors.joining(" \n| "));

        String collect2 = procLtl.stream()
                .map(ints -> " F (proc" + ints[0] + ".state = critical & proc" + ints[1] + ".state != critical & proc" + ints[2] + ".state != critical)")
                .collect(Collectors.joining(" \n| "));

        System.out.println(collect);
        System.out.println("| " + collect1);
        System.out.println("| " + collect2);
    }
}
