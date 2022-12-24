import os
import random

bits = 4
N = 4
K = 2
adder_type = "trunc"
input_bits = 2*bits
output_bits = bits+1
testvectors = 2**input_bits if bits < 16 else 2**bits
var = 0

script_dir = os.path.dirname(__file__)
rel_path = "../hardware/verification/testvectors" + ".txt"

abs_file_path = os.path.join(script_dir, rel_path)

def add_tru(a: int, b: int, k: int, n:int):
    mask = ((2**n-1) << k) & (2**n-1)
    result = (a & mask) + (b & mask)
    return result

def add_loa(a: int, b: int, k: int, n: int):
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



# write testvector into file
with open(abs_file_path, 'w', encoding="utf-8") as f:
    for x in range(0, testvectors):
        binaryIn = bin(var)[2:].zfill(input_bits)
        a = int(binaryIn[0:bits], 2)
        b = int(binaryIn[bits:2*bits], 2)
        #out = bin(a+b)[2:].zfill(output_bits)
        if adder_type == "trunc":
            out = bin(add_tru(a,b,K,N))[2:].zfill(output_bits) 
        else:    
            out = bin(add_loa(a,b,K,N))[2:].zfill(output_bits) 
        f.write(binaryIn[0:bits]+binaryIn[bits:2*bits]+'_'+ out + '\n')
        var = var + 1 if bits < 16 else random.randint(0, 2**input_bits)

