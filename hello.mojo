from collections import List

fn max(array: List[Int]) -> List[Int]:
    var max_value: Int = -1
    for item in array:
        if item[] > max_value:
           max_value = item[]
    return max_value

fn show(array: List[Int]):
    print("[", end="")
    for item in range(len(array)):
        if item == len(array) - 1:
            print(str(array[item]), end = '')
        else:
            print(str(array[item]), end = ', ')
    print("]")
    

def selection_sort(array: List[Int]) -> List[Int]:
    var temp: Int
    var index_minimum: Int = len(array) - 1
    var find_minimum: Bool
    for step in range(len(array) -1):
        find_minimum = False
        # Set the minimum
        var cur_min: Int = array[step]
        # print(cur_min)
        # Comparing
        for index in range(step, len(array)):
            if array[index] < cur_min:
                cur_min = array[index]
                index_minimum = index
                find_minimum = True
                # print(index_minimum)
        
        # Swapping
        # https://docs.modular.com/mojo/stdlib/collections/list/List/#swap_elements
        # This is useful because swap(my_list[i], my_list[j]) cannot be 
        # supported by Mojo, because a mutable alias may be formed.
        
        if find_minimum:
            # Doesn't work with fn
            array.swap_elements(step, index_minimum)

    return array

fn main() raises:
    print("Hello !")
    numbers = List[Int](2, 3, 5, 4)
    # for i in range(5):
    #     print(i)
    show(numbers)
    var sorted: List[Int] = selection_sort(numbers)
    show(sorted)

    # for n in y:
    #     print(n[])