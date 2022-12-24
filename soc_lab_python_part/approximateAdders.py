#description of a zero truncation adder
#a: summand 1
#b: summand 2
#k: number of approximation/truncation bits
#n: bit width of adder
def zero_truncation_adder(a: int, b: int, k: int, n:int):
    mask = ((2**n-1) << k) & (2**n-1)
    result = (a & mask) + (b & mask)
    return result

"""
def zero_truncation_adder(a: int, b: int, k: int, n:int):
    result = (a >> k) + (b >> k) << k
    return result
"""

#description of Lower-Part-Or adder
#a: summand 1
#b: summand 2
#k: number of approximation bits
#n: bit width of adder
def loa_adder(a: int, b: int, k: int, n: int):
    mask_exact = ((2**n-1) << k) & (2**n-1)
    mask_approx = 2**k-1
    result_approx = (a & mask_approx) | (b & mask_approx)
    result_exact = (a & mask_exact) + (b & mask_exact)

    if k > 0:
        is_carry = bool(((a & mask_approx) >> (k-1)) & ((b & mask_approx) >> (k-1)))
    else:
        is_carry = False

    carry = 2**k if is_carry == True else 0
    result = result_exact + result_approx + carry

    return result

