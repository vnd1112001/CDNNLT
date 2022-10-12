class ThiSinh
    @sobaodanh
    @hoten
    @diachi
    @mucuutien

    def initialize(sobaodanh, hoten, diachi, mucuutien)
        @sobaodanh = sobaodanh
        @hoten = hoten
        @diachi = diachi
        @mucuutien = mucuutien
    end

    attr_accessor :sobaodanh, :hoten, :diachi, :mucuutien

    def NhapThongTin
        print "Nhập số báo danh: "
        @sobaodanh = gets.to_i
        print "Nhập họ tên: "
        @hoten = gets.chomp
        print "Nhập địa chỉ: "
        @diachi = gets.chomp
        print "Nhập mức ưu tiên: "
        @mucuutien = gets.chomp
    end

    def HienThiThongTin
        puts "Số báo danh: #{@sobaodanh}"
        puts "Họ tên: #{@hoten}"
        puts "Địa chỉ: #{@diachi}"
        puts "Mức ưu tiên: #{@mucuutien}"
    end

end

class KhoiA < ThiSinh
    @TOAN = "Toán"
    @LY = "Lý"
    @HOA = "Hóa"

    def initialize
    end

    def HienThiThongTin
        super
        print "Khối thi: A"
    end
end

class KhoiB < ThiSinh
    @TOAN = "Toán"
    @HOA = "Hóa"
    @SINH = "Sinh"

    def initialize
    end

    def HienThiThongTin
        super
        print "Khối thi: B"
    end
end

class KhoiC < ThiSinh
    @VAN = "Văn"
    @SU = "Sử"
    @DIA = "Địa"

    def initialize
    end

    def HienThiThongTin
        super
        print "Khối thi: C"
    end
end

class QuanLyTuyenSinh
    $TuyenSinh = []
    continue = true
    def ThemThiSinh
        puts "1. Thêm thí sinh khối A"
        puts "2. Thêm thí sinh khối B"
        puts "3. Thêm thí sinh khối C"
        print "Chọn khối cho thí sinh: "
        khoi = gets.to_i

        case khoi
            when 1
                k = "A"
            when 2
                k = "B"
            when 3
                k = "C"
            else
                puts "Chọn sai khối!"
        end
        print "Thêm bao nhiêu thí sinh khối #{k}: "
        n = gets.to_i
        for i in 0..n-1 do
            case khoi
                when 1
                    $ts = KhoiA.new
                when 2
                    $ts = KhoiB.new
                when 3
                    $ts = KhoiC.new
                else
                    puts "Chọn sai khối!"
            end
            puts "Nhập thông tin thí sinh thứ #{i+1}: "
            $ts.NhapThongTin
            $TuyenSinh << $ts
        end
    end

    def HienThiThongTin
        $TuyenSinh.each do |ts|
            puts ts.HienThiThongTin
        end
    end

    def TimKiem
        print "Nhập số báo danh của thí sinh: "
        sbd = gets.to_i

        $TuyenSinh.select { |ts| ts.sobaodanh == sbd }.each do |ts2|
            puts ts2.HienThiThongTin
        end
    end

    while continue
        puts "1. Thêm mới thí sinh."
        puts "2. Hiển thị thông tin của thí sinh và khối thi của thí sinh."
        puts "3. Tìm kiếm theo số báo danh."
        puts "4. Thoát khỏi chương trình."
        print "Mời nhập chức năng: "
        chucnang = gets.to_i
        qlts = QuanLyTuyenSinh.new
        case chucnang
            when 1
                qlts.ThemThiSinh
            when 2
                qlts.HienThiThongTin
            when 3
                qlts.TimKiem
            when 4
                continue = false
        end
    end
end