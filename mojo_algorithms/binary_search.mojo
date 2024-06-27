from collections import List

fn binary_search(arr: List[Int], target: Int) -> Int:
    var left: Int = 0
    var right: Int = len(arr) - 1
    while left <= right:
        var mid: Int = (left + right) // 2
        if arr[mid] == target:
            return mid
        elif arr[mid] < target:
            left = mid + 1
        else:
            right = mid - 1
    return -1  # Target not found

fn main():
    var arr = List(1, 3, 5, 7, 9, 11, 13, 15, 17)
    var target: Int = 2

    var res:Int = binary_search(arr, target)
    if res != -1:
        print(target," is found at index ",res)
    else:
        print(target,"is not found in the array")
