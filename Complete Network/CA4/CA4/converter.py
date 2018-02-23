def convert(readfile, writefile):
    hexdata = open(readfile, 'r')
    newfile = open(writefile, 'w')
    for line in hexdata:
        newfile.write(bin(int(line[4:], 16))[2:].zfill(16) + '\n')
    hexdata.close()
    newfile.close()


filenames = [['b1_sign_mag.hex', 'b1_sign_mag.bin'],
             ['b2_sign_mag.hex', 'b2_sign_mag.bin'],
             ['te_data_sign_mag.hex', 'te_data_sign_mag.bin'],
             ['w1_sign_mag.hex', 'w1_sign_mag.bin'],
             ['w2_sign_mag.hex', 'w2_sign_mag.bin']]

for names in filenames:
    convert(names[0], names[1])
