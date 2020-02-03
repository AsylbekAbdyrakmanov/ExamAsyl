with open('air.txt') as file_air:
    lines = file_air.readlines()
s_ = ''
list_s = []
for line in lines:
    s_ += line.strip().replace('.','').replace(',','').replace(' ','').lower()
for i in s_:
    list_s.append(i)
list_di = {}.fromkeys(list_s, 0)
for a in list_s:
    list_d[a] += 1
max_val = max(list_di.values())
l_di = {k:v for k, v in list_di.items() if v == max_val}

print(list_di)
#max value
print(l_di)
file_air.close()