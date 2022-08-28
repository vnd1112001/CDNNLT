puts "Xin chào Văn Ngọc Dũng , mã sinh viên : 1911505310206"

print "Nhập số  bất  kì: "
a  = gets
puts "Số vừa nhập  là:  #{a}\n"

print "Nhập vào 2 số: "
b,c = gets.split
puts "Giá trị lớn nhất trong 2 số: #{b > c ? b:c}"