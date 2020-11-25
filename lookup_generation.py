import math

TABLE_NAME = "atan"
NUM_POINTS = 1000

def generate_lookup_table():
    output = TABLE_NAME + ":\t.word\t"
    for i in range(NUM_POINTS):
        angle = (i * 2 * math.pi) / 100
        v = math.atan(angle)
        output += str(v) + "\t"
    
    print(output)

generate_lookup_table()