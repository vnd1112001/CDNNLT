class HocSinh
    @hoten
    @lop
    @tuoi
    @quequan

    def ThemHocSinh
        print "Nhập học tên: "
        @hoten = gets.chomp
        print "Nhập lớp: "
        @lop = gets.chomp
        print "Nhập tuổi: "
        @tuoi = gets.to_i
        print "Nhập quê quán: "
        @quequan = gets.chomp
    end

    attr_accessor :hoten, :lop, :tuoi, :quequan
    
    def HienThiThongTin
        puts "Họ tên: #{@hoten}"
        puts "Lớp: #{@lop}"
        puts "Tuổi: #{@tuoi}"
        puts "Quê quán: #{@quequan}"
    end
end

class QuanLyHocSinh
    $list = []
    continue = true

    def ThemMoi
        print "Thêm bao nhiêu học sinh: "
        n = gets.to_i
        for i in 0..n-1 do
            hs = HocSinh.new
            puts "Nhập thông tin học sinh thứ #{i+1}: "
            hs.ThemHocSinh
            $list << hs
        end
    end

    def HienThi
        puts "Danh sách học sinh 20 tuổi: "
        $list.select { |h| h.tuoi == 20}.each do |hs|
            hs.HienThiThongTin
        end
    end

    def SoLuong
        puts "Danh sách học sinh 23 tuổi và quê ở DN: "
        i = 0
        $list.select { |h| h.tuoi == 23 && h.quequan == "DN"}.each do |hs|
            puts "Thông tin học sinh thứ #{i+1}: "
            hs.HienThiThongTin
        end
        puts "Số lượng học sinh tuổi 23 và quê ở DN là: #{i}"
    end

    while continue
        puts "1. Thêm học sinh mới."
        puts "2. Hiển thi các học sinh 20 tuổi."
        puts "3. Cho biết số lượng các học sinh có tuổi là 23 và quê ở DN."
        print "Chọn chức năng: "
        chucnang = gets.to_i
        qlhs = QuanLyHocSinh.new
        case chucnang
            when 1
                qlhs.ThemMoi
            when 2
                qlhs.HienThi
            when 3
                qlhs.SoLuong
            else continue = false
        end
    end
end