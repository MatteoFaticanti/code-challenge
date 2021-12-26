import os
val = input("Enter the directory path: ") # example: C:/Users/snake/Desktop/test
list = os.listdir(val) 
d = {}
for file in list: #for every file in the directory check if have a .sh extention and read the first line
    if file.lower().endswith('.sh'):
        with open(val + '/' + file, "r") as f:
            first_l = f.readline()
            if first_l[:2] == "#!":
                d[first_l] = 1 if first_l not in d.keys() else d[first_l] + 1 #update the dictionary containing the occurrences
if d == {}:
    print("0 script files in the directory")
for k, v in d.items():
    print(v, k)
