class Nguoi
    @hoten
    @tuoi
    @quequan
    @masogv

    def initialize(hoten, tuoi, quequan, masogv)
        @hoten = hoten
        @tuoi = tuoi
        @quequan = quequan
        @masogv = masogv
    end

    attr_accessor :hoten, :tuoi, :quequan, :masogv

    def NhapThongTin
        print "Nhập họ tên: "
        @hoten = gets.chomp
        print "Nhập tuổi: "
        @tuoi = gets.to_i
        print "Nhập quê quán: "
        @quequan = gets.chomp
        print "Nhập mã số giáo viên: "
        @masogv = gets.chomp
    end

    def HienThiThongTin
        puts "Họ tên: #{@hoten}"
        puts "Tuổi: #{@tuoi}"
        puts "Quê quán: #{@quequan}"
        puts "Mã số giao viên: #{@masogv}"
    end
end

class CBGV < Nguoi
    @luongcung
    @luongthuong
    @tienphat
    @luongthuclinh

    def initialize

    end

    def NhapThongTin
        super
        print "Nhập lương cứng: "
        @luongcung = gets.to_i
        print "Nhập lương thưởng: "
        @luongthuong = gets.to_i
        print "Nhập tiền phạt: "
        @tienphat = gets.to_i
        @luongthuclinh = @luongcung + @luongthuong - @tienphat
    end

    attr_accessor :luongcung, :luongthuong, :tienphat, :luongthuclinh

    def HienThiThongTin
        super
        puts "Lương cứng: #{@luongcung}"
        puts "Lương thưởng: #{@luongthuong}"
        puts "Tiền phạt: #{@tienphat}"
        puts "Lương thực lĩnh: #{@luongthuclinh}"
    end
end

class QuanLyCanBo
    $list = []
    continue = true

    def NhapThongTin
        print "Thêm bao nhiêu cán bộ: "
        n = gets.to_i
        for i in 0..n-1 do
            cb = CBGV.new
            puts "Nhập thông tin cán bộ thứ #{i+1}: "
            cb.NhapThongTin
            $list << cb
        end
    end

    def XoaCanBo
        print "Nhập mã số cán bộ: "
        ms = gets.chomp
        $list.select{|cb| cb.masogv == ms}.each do |gv|
            $list.delete(gv)
        end
        puts "Danh sách cán bộ sau khi xóa: "
        HienThiThongTin()
    end

    def HienThiThongTin
        puts "Danh sách cán bộ: "
        $list.each do |gv|
            # puts "Thông tin cán bộ thứ #{$index + 1}: "
            puts gv.HienThiThongTin
        end
    end

    while continue
        puts "1. Thêm cán bộ giáo viên."
        puts "2. Xóa cán bộ giáo viên theo mã số giáo viên."
        puts "3. Hiển thị danh sách giáo viên."
        puts "4. Thoát khỏi chương trình."
        print "Chọn chức năng: "
        chucnang = gets.to_i
        qlcb = QuanLyCanBo.new
        case chucnang
            when 1
                qlcb.NhapThongTin
            when 2
                qlcb.XoaCanBo
            when 3 
                qlcb.HienThiThongTin
            else continue = false
        end
    end
end