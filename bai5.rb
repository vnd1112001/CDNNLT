class Nguoi
    @hoten
    @tuoi
    @cmnd
    @phong
    @songayo

    # def initialize(hoten, tuoi, cmnd, phong, songayo)
    #     @hoten = hoten
    #     @tuoi = tuoi
    #     @cmnd = cmnd        
    #     @phong = phong
    #     @songayo = songayo
    # end

    def NhapThongTin()
        print "Nhập họ tên: "
        @hoten = gets.chomp
        print "Nhập tuổi: "
        @tuoi = gets.to_i
        print "Nhập chứng minh nhân dân: "
        @cmnd = gets.to_i
        continue = true
        while continue
            print "Chọn loại phòng(A, B, C): "
            @phong = gets.chomp
            case @phong
                when "A"
                    continue = false
                when "B"
                    continue = false
                when "C"
                    continue = false
            end
        end
        print "Nhập số ngày ở: "
        @songayo = gets.to_i
    end

    attr_accessor :hoten, :tuoi, :cmnd, :phong, :songayo

    def HienThiThongTin()
        puts "Họ tên: #{@hoten} \nTuổi: #{@tuoi} \nChứng minh nhân dân: #{@cmnd} \nLoại phòng: #{@phong} \nSố ngày ở: #{@songayo}"
    end
end

class KhachSan
    $list = []
    continue = true
    def ThemNguoi()
        nguoi = Nguoi.new
        nguoi.NhapThongTin()
        $list << nguoi
    end
    
    def XoaKhach
        puts "Danh sách khách hàng: "
        $list.each do |kh|
            puts kh.HienThiThongTin
        end
        print "Nhập số chứng minh khách cần xóa: "
        cmnd = gets.to_i
        $list.select{|kh| kh.cmnd == cmnd}.each do |khach|
            $list.delete(khach)
        end
        puts "Danh sách khách sau khi xóa: "
        $list.each do |kh|
            puts kh.HienThiThongTin
        end
        
    end
    
    def TinhTien        
        print "Nhập chứng minh nhân dân khách cần tính tiền: "
        cmnd = gets.to_i
        $list.select{|kh| kh.cmnd == cmnd}.each do |khach|
            loai = khach.phong
            if loai == "A"
                gia = 500
            elsif loai == "B"
                gia = 300
            elsif loai == "C"
                gia = 100
            end
            tongtien = khach.songayo * gia
            puts "Thông tin khách: "
            khach.HienThiThongTin
            puts "Tổng tiền: #{tongtien}"
        end
    end

    while continue
        puts "1. Thêm mới khách hàng."
        puts "2. Xóa khách theo số chứng minh nhân dân."
        puts "3. Tính tiền thuê phòng cho khách."
        puts "4. Thoát khỏi chương trình."

        print "Chọn chức năng: "
        chucnang = gets.to_i
        ks = KhachSan.new
        case chucnang
            when 1
                ks.ThemNguoi
            when 2
                ks.XoaKhach
            when 3
                ks.TinhTien
            else
                continue = false
        end
    end
end