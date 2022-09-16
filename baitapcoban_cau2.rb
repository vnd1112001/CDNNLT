#Nhập 3 cạnh tam giác, kiểm tra điều kiện có phải 3 cạnh tam giác hay ko? nếu đúng --> tính chu vi, diện tích --> in ra
print "Nhap canh AB: "
AB_206 = gets.to_i
print "Nhap canh BC: "
BC_206 = gets.to_i
print "Nhap canh AC: "
AC_206 = gets.to_i
  if AB_206 + BC_206 > AC_206 && AB_206 + AC_206 > BC_206 && BC_206 + AC_206 > AB_206 
    print "Day la tam giac " 
    print "\nChu vi: ", Perimeter_206 = (AB_206 + BC_206 + AC_206) / 2.0
    print "\nDien tich: ", Area_206 = Math.sqrt(Perimeter_206 * (Perimeter_206 - AB_206) * (Perimeter_206 - AC_206) * (Perimeter_206 - BC_206)).to_f
  else
    puts "Khong phai tam giac! "
end
