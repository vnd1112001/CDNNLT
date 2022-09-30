class Canbo


    def initialize

    end 

   

    def enter_infomation
        print "Nhập tên : "
        @name = gets.chomp
        print "Nhập tuổi : "
        @age = gets.to_i
        print "Nhập giới tính 1(nam) 0(nữ) 2(khác) : "
        @gender = gets.to_i
        print "Nhập địa chỉ : "
        @address = gets.chomp
    end

    def info    
        puts "Tên : #{@name}"
        puts "Tuối : #{@age}"
        if @gender == 1 
            puts'Giới tính : Nam'
        elsif @gender == 0
            puts 'Giới Tính : Nữ'
        else 
            puts 'Giới Tính : Khác'
        end
        puts "Địa chỉ : #{@address}"
    end
    attr_accessor :name, :age, :gender, :address
end 



class Congnhan < Canbo

    def initialize
    end

    attr_accessor :name, :age, :gender, :address, :bac

    def enter_infomation
        super
        print "Nhập bậc : "
        @bac = gets.chomp
    end

    def info 
        super   
        puts "Bậc : #{@bac}"
    end

end

class Kysu < Canbo

    def initialize
    end

    def enter_infomation
        super
        print "Nhập ngành đào tạo : "
        @nganh = gets.chomp
    end
    def info 
        super   
        puts "Ngành : #{@nganh}"
    end
    attr_accessor :name, :age, :gender, :address, :nganh
end

class Nhanvien < Canbo
    def initialize
    end

    def enter_infomation
        super
        print "Nhập công việc : "
        @congviec = gets.chomp
    end
    def info 
        super   
        puts "Công việc : #{@congviec}"
    end
    attr_accessor :name, :age, :gender, :address, :congviec

end

class QLCB
    def initialize
    end

    $canbos = []
    
    def addCanbo
        puts"1. Nhâp công nhân :"
        puts"2. Nhâp Ky su :"
        puts"3. Nhập Nhân viên :"
        print "Mơi bạn chon : "
        choose = gets.to_i
        if choose ==1 
            canbo =Congnhan.new
         
        elsif choose == 2
            canbo =Kysu.new
        else 
            canbo = Nhanvien.new
        end
        canbo.enter_infomation
        $canbos << canbo       
    end

    def infomatinon 
        puts "============Danh sách cán bộ là================"    
        $canbos.each do |canbo|
            puts canbo.info
        end
    end

end



$continute = true
while $continute

    quanly = QLCB.new
    puts "1. thêm mới cán bộ."
    puts "2. Tìm kiếm theo tên."
    puts "3. Hiện thị thông tin danh sách cán bộ ."
    puts "4 Thoát khỏi chương trình."

    print "Mời bạn chọn : "
    choose = gets.to_i

    case choose
    when 1
        quanly.addCanbo
    when 2
       puts "little child"
    when 3
        quanly.infomatinon
    else
       puts "Xin tạm biệt!"
        $continute = false
    end
end