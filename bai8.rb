class SinhVien
    @hoten
    @tuoi
    @lop

    def initialize(hoten, tuoi, lop)
        @hoten = hoten
        @tuoi = tuoi
        @lop = lop
    end

    attr_accessor :hoten, :tuoi, :lop

    def NhapThongTin
        print "Nhập họ tên: "
        @hoten = gets.chomp
        print "Nhập tuổi: "
        @tuoi = gets.to_i
        print "Nhập lớp: "
        @lop = gets.chomp
    end

    def HienThiThongTin
        puts "Họ tên: #{@hoten}"
        puts "Tuổi: #{@tuoi}"
        puts "Lớp: #{@lop}"
    end
end

class TheMuon < SinhVien
    @maphieumuon
    @ngaymuon
    @ngaytra
    @sohieusach
    def initialize

    end

    attr_accessor :maphieumuon, :ngaymuon, :ngaytra, :sohieusach

    def NhapThongTin
        super
        print "Nhập mã phiếu mượn: "
        @maphieumuon = gets.chomp
        print "Nhập ngày mượn: "
        @ngaymuon = gets.to_i
        print "Nhập ngày trả: "
        @ngaytra = gets.to_i
        print "Nhập số hiệu sách: "
        @sohieusach = gets.to_i
    end

    def HienThiThongTin
        super
        puts "Mã phiếu mượn: #{@maphieumuon}"
        puts "Ngày mượn: #{@ngaymuon}"
        puts "Hạn trả: #{@ngaytra-@ngaymuon} ngày"
        puts "Số hiệu sách: #{@sohieusach}"
    end
end

class QuanLyMuonSach
    $list = []
    continue = true

    def ThemMoi
        print "Thêm mới bao nhiêu thẻ mượn: "
        n = gets.to_i
        for i in 0..n-1 do
            tm = TheMuon.new
            puts "Nhập thông tin thẻ mượn thứ #{i+1}: "
            tm.NhapThongTin
            $list << tm
        end
    end
    
    def XoaThe
        print "Nhập mã phiếu mượn cần xóa: "
        mpm = gets.chomp
        $list.select{|pm| pm.maphieumuon == mpm}.each do |pm|
            $list.delete(pm)
        end
        puts "Danh sách phiếu mượn sau khi xóa: "
        HienThi()
    end

    def HienThi
        $list.each do |pm|
            pm.HienThiThongTin
        end
    end

    while continue
        puts "1. Thêm phiếu mượn sách."
        puts "2. Xóa theo mã phiếu mượn."
        puts "3. Hiển thị thông tin các thẻ mượn."
        puts "4. Thoát khỏi chương trình."
        print "Chọn chức năng: "
        chucnang = gets.to_i
        qlms = QuanLyMuonSach.new
        case chucnang
            when 1
                qlms.ThemMoi
            when 2
                qlms.XoaThe
            when 3
                puts "Danh sách phiếu mượn: "
                qlms.HienThi
            else continue = false
        end
    end
end