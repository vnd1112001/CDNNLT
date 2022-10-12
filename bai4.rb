class Nguoi
    @hoten
    @tuoi
    @nghenghiep
    @chungminh

    def NhapThongTin()
        print "Nhập họ tên: "
        @hoten = gets.chomp
        print "Nhập tuổi: "
        @tuoi = gets.to_i
        print "Nhập nghề nghiệp: "
        @nghenghiep = gets.chomp
        print "Nhập chứng minh nhân dân: "
        @chungminh = gets.chomp
        $HoGiaDinh << $nguoi
        $KhuPho << $HoGiaDinh
    end
    
    attr_accessor :hoten, :tuoi, :nghenghiep, :chungminh

    def HienThiThongTin()
        puts "Họ tên: #{@hoten} \nTuổi: #{@tuoi} \nNghề nghiệp: #{@nghenghiep} \nChứng minh nhân dân: #{@chungminh}"
    end
end

class HoGiaDinh < Nguoi
    @sothanhvien
    @sonha

    attr_accessor :sothanhvien, :sonha
    
    def NhapThongTinHoGD()
        $HoGiaDinh = []
        print "\nHộ gia đình có bao nhiêu người: "
        @sothanhvien = gets.to_i
        for i in (0..@sothanhvien-1) do
            $nguoi = Nguoi.new
            puts "Nhập thông tin người thứ #{i+1}: "
            $nguoi.NhapThongTin
        end
        print "Nhập số nhà: "
        @sonha = gets.to_i
        $HoGiaDinh << ({:@sothanhvien => @sothanhvien})
        $HoGiaDinh << ({:@sonha => @sonha})
    end
    
    $index = 0
    def HienThiThongTinHoGD(kp)
        $index += 1
        puts "Thông tin hộ gia đình thứ #{$index}: "
        puts "Số thành viên: #{kp[1][:@sothanhvien]}"
        kp.delete({:@sothanhvien => kp[1][:@sothanhvien]})
        puts "Số nhà: #{kp[1][:@sonha]}"
        kp.delete({:@sonha => kp[1][:@sonha]})
        kp.each do |hgd|
            puts hgd.HienThiThongTin
        end
    end
end

class QuanLyKhuPho < HoGiaDinh
    $KhuPho = []
    print "Nhập bao nhiêu hộ dân: "
    n = gets.to_i

    for i in (0..n-1) do
        $hd = HoGiaDinh.new
        print "Nhập thông tin hộ dân thứ #{i+1}: "
        $hd.NhapThongTinHoGD
    end

    puts "Thông tin các hộ gia đình trong khu phố: "

    $KhuPho.each do |kp|
        hgd = HoGiaDinh.new
        hgd.HienThiThongTinHoGD(kp)
    end
end