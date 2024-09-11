"""
Contains a function to generate an array with random elements
"""
import subprocess


def random_array(arr):
    """
    Function to generate an array with random elements
    """
    shuffled_num = None
    for i, _ in enumerate(arr):
        shuffled_num = subprocess.run(
            ["shuf", "-i1-20", "-n1"], capture_output=True, check=True)
        arr[i] = int(shuffled_num.stdout)
    return arr
