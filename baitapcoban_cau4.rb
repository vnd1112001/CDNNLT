#Viết chương trình để nhập ba số nguyên đã biết, sau đó in ra màn hình theo thứ tự tăng dần và giảm dần.
arr_206 = []
print "Nhap so thu nhat: "
No1_206 = gets.to_i
arr_206.push(No1_206)

print "Nhap so thu hai: "
No2_206 = gets.to_i
arr_206.push(No2_206)

print "Nhap so thu ba: "
No3_206 = gets.to_i
arr_206.push(No3_206)

print "Mang tang dan : ", arr_206.sort

print "\nMang giam dan : ", arr_206.sort.reverse