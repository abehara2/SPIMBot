import math

TABLE_NAME = "atan_table"
BOARD_WIDTH = 320

def generate_lookup_table():
    output = TABLE_NAME + ":\t.word\t"

    for i in range(BOARD_WIDTH + 1):
        for j in range(BOARD_WIDTH + 1):
            if (j == 0):
                r = 0
            else:
                r = float(i) / j
            v = int(round(math.atan(r) * 57.2958))
            output += str(v)
            output += "\t"
    
    print(output)

generate_lookup_table()