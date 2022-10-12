class TaiLieu
    @matailieu
    @tennhaxuatban
    @sobanphathanh
    @loai

    def initialize(matailieu, tennhaxuatban, sobanphathanh)
        @matailieu = matailieu
        @tennhaxuatban = tennhaxuatban
        @sobanphathanh = sobanphathanh
    end

    def NhapThongTin(loai)
        print "Nhập mã tài liệu: "
        @matailieu = gets.chomp
        print "Nhập tên nhà xuất bản: "
        @tennhaxuatban = gets.chomp
        print "Nhập số bản phát hành: "
        @sobanphathanh = gets.to_i
        @loai = loai
    end
    
    attr_accessor :matailieu, :tennhaxuatban, :sobanphathanh, :loai

    def HienThiThongTin
        puts "Mã tài liệu: #{@matailieu}\nLoại tài liệu: #{@loai} \nTên nhà xuất bản: #{@tennhaxuatban} \nSố bản phát hành: #{@sobanphathanh}"
    end
end

class Sach < TaiLieu
    @tacgia
    @sotrang

    def initialize
    end

    # def initialize(tacgia, sotrang)
    #     super
    #     @tacgia = tacgia
    #     @sotrang = sotrang
    # end

    attr_accessor :tacgia, :sotrang
    
    def NhapThongTin(loai)
        super
        print "Nhập tên tác giả: "
        @tacgia = gets.chomp
        print "Nhập số trang: "
        @sotrang = gets.to_i
    end
    
    def HienThiThongTin
        super
        puts "Tác giả: #{@tacgia} \nSố trang: #{@sotrang}"
    end
end

class Tapchi < TaiLieu
    @sophathanh
    @thangphathanh

    def initialize
    end
    
    # def initialize(sophathanh, thangphathanh)
    #     super
    #     @sophathanh = sophathanh
    #     @thangphathanh = thangphathanh
    # end

    def NhapThongTin(loai)
        super
        print "Nhập số phát hành: "
        @sophathanh = gets.to_i
        print "Nhập tháng phát hành: "
        @thangphathanh = gets.chomp
    end
    attr_accessor :sophathanh, :thangphathanh
    
    def HienThiThongTin
        super
        puts "Số phát hành: #{@sophathanh} \nTháng phát hành: #{@thangphathanh}"
    end
end

class Bao < TaiLieu
    @ngayphathanh

    def initialize
    end

    # def initialize(ngayphathanh)
    #     super
    #     @ngayphathanh = ngayphathanh
    # end
    
    def NhapThongTin(loai)
        super
        print "Nhập ngày phát hành: "
        @ngayphathanh = gets.chomp
    end
    
    attr_accessor :ngayphathanh

    def HienThiThongTin
        super
        puts "Ngày phát hành: #{@ngayphathanh}"
    end
end

class QuanLySach
    $TaiLieu = []
    continue = true
    def ThemTaiLieu
        puts "1. Thêm sách."        
        puts "2. Thêm tạp chí."        
        puts "3. Thêm báo."        
        print "Chọn loại tài liệu cần thêm: "
        loai = gets.to_i
        case loai
            when 1
                ten = "sách"
            when 2
                ten = "tạp chí"
            when 3
                ten = "báo"
            else
                puts "Chọn sai loại rồi"
        end
        print "Thêm bao nhiêu #{ten}: "
        n = gets.to_i

        for i in (0..n-1) do
            case loai
                when 1
                    $tl = Sach.new
                when 2
                    $tl = Tapchi.new
                when 3
                    $tl = Bao.new
                else
                    puts "Chọn sai loại rồi"
            end
            puts "Nhập thông tin #{ten} thứ #{i+1}: "
            $tl.NhapThongTin(ten)
            $TaiLieu << $tl
        end
    end

    def XoaTaiLieu
        print "Nhập mã tài liệu cần xóa: "
        matl = gets.chomp
        tk = $TaiLieu.select{ |tl| tl.matailieu == matl}
        puts "Danh sách tài liệu sau khi xóa: "
        tk.each do |tl|
            $TaiLieu.delete(tl)
        end
        HienThiThongTin()
    end

    def HienThiThongTin
        $TaiLieu.each do |tl|
            puts tl.HienThiThongTin
        end
    end

    def TimKiem
        print "Nhập loại tài liệu cần tìm: "
        loai = gets.chomp
        tk = $TaiLieu.select{ |tl| tl.loai == loai}
        puts "Danh sách tài liệu tìm theo loại:"
        tk.each do |loai|
            puts loai.HienThiThongTin
        end
    end

    while continue
        puts "1. Thêm mới tài liệu."
        puts "2. Xóa tài liệu theo mã tài liệu."
        puts "3. Hiện thị thông tin về tài liệu"
        puts "4. Tìm kiếm tài liệu theo loại: Sách, tạp chí, báo"
        puts "5. Thoát khỏi chương trình"

        qls = QuanLySach.new
        print "Chọn chức năng: "
        chucnang = gets.to_i

        case chucnang
            when 1 
                qls.ThemTaiLieu
            when 2
                qls.XoaTaiLieu
            when 3
                puts "Danh sách tài liệu: "
                qls.HienThiThongTin
            when 4
                qls.TimKiem
            else
                continue = false
        end
    end
end