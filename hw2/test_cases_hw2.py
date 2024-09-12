"""
Test cases for merge sort
"""
import hw2_debugging

def test_merge_sort1():
    assert hw2_debugging.merge_sort([12, 1, 4, 9, 2]) == [1, 2, 4, 9, 12]

def test_merge_sort2():
    assert hw2_debugging.merge_sort([4, 3, 2, 3, 1]) == [1, 2, 3, 3, 4]

def test_merge_sort3():
    assert hw2_debugging.merge_sort([5, 4, 3, 2, 1]) == [1, 2, 3, 4, 5]