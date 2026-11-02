import java.util.Scanner;

public class SelectionSearch {

    // Sắp xếp chọn giảm dần
    public static void selectionSortDesc(int[] arr) {
        int n = arr.length;

        for (int i = 0; i < n - 1; i++) {
            int maxIndex = i;

            for (int j = i + 1; j < n; j++) {
                if (arr[j] > arr[maxIndex]) {
                    maxIndex = j;
                }
            }

            int temp = arr[i];
            arr[i] = arr[maxIndex];
            arr[maxIndex] = temp;
        }
    }

    // Tìm kiếm tuyến tính
    public static int linearSearch(int[] arr, int x) {
        for (int i = 0; i < arr.length; i++) {
            if (arr[i] == x) {
                return i;
            }
        }
        return -1;
    }

    // Tìm kiếm nhị phân cho mảng giảm dần
    public static int binarySearchDesc(int[] arr, int x) {
        int left = 0;
        int right = arr.length - 1;

        while (left <= right) {
            int mid = (left + right) / 2;

            if (arr[mid] == x) {
                return mid;
            }

            if (arr[mid] < x) {
                right = mid - 1;
            } else {
                left = mid + 1;
            }
        }

        return -1;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Nhập kích thước mảng: ");
        int n = sc.nextInt();

        int[] arr = new int[n];

        System.out.println("Nhập các phần tử cho mảng:");
        for (int i = 0; i < n; i++) {
            arr[i] = sc.nextInt();
        }

        // Sắp xếp giảm dần
        selectionSortDesc(arr);

        System.out.print("\nMảng sau khi sắp xếp theo thứ tự giảm dần: [");
        for (int i = 0; i < arr.length; i++) {
            System.out.print(arr[i]);
            if (i < arr.length - 1) {
                System.out.print(", ");
            }
        }
        System.out.println("]");

        // Nhập số cần tìm
        System.out.print("\nNhập số cần tìm: ");
        int x = sc.nextInt();

        // Tìm kiếm tuyến tính
        int linearResult = linearSearch(arr, x);
        if (linearResult != -1) {
            System.out.println("Tìm kiếm tuyến tính: Phần tử " + x +
                    " tìm thấy tại chỉ số: " + linearResult);
        } else {
            System.out.println("Tìm kiếm tuyến tính: Không tìm thấy phần tử " + x);
        }

        // Tìm kiếm nhị phân
        int binaryResult = binarySearchDesc(arr, x);
        if (binaryResult != -1) {
            System.out.println("Tìm kiếm nhị phân: Phần tử " + x +
                    " tìm thấy tại chỉ số: " + binaryResult);
        } else {
            System.out.println("Tìm kiếm nhị phân: Không tìm thấy phần tử " + x);
        }

        sc.close();
    }
}
