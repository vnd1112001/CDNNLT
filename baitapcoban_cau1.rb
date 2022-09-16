#Nhập các số vào mảng, in ra số lớn nhất, nhỏ nhất, giá trị trung bình của mảng.
arr_206 = [];
avg_206 = 0;
print "Nhap so phan tu cua mang: ";
numbers_206 = gets.to_i;
for i in 0..numbers_206 -1
    print "Array[#{i + 1}] : ";
    value_206 = gets.to_i;
    avg_206 += value_206;
    arr_206.push(value_206);
end

avg_206 = avg_206/arr_206.length;

puts "So lon nhat: #{arr_206.max}";
puts "So nho nhat: #{arr_206.min}";
puts "Gia tri trung binh: #{avg_206}";