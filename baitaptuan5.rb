class Human
    attr_accessor :name, :hair, :height,:weight, :age,:phone,:email,:nation

    def initialize ( name, hair, height,weight,age,phone,email,nation)
        @name = name
        @hair = hair
        @height = height
        @weight = weight
        @age = age
        @email = email
        @phone = phone
        @nation = nation
    end

    def display
        puts "Name : #{name} - Hair : #{hair} - Height #{height} - Weight #{weight} - Email : #{email} - Phone #{phone} - Nation #{nation}"
    end
end


class Student < Human
    attr_accessor :grade1, :grade2, :grade3
    
    def initialize ( name, hair, height,weight,age,phone,email,nation,grade1, grade2,grade3)
        @grade1 = grade1;
        @grade2 = grade2;
        @grade3 = grade3;
        super(name, hair, height,weight,age,phone,email,nation)
    end 

    def average
         (grade1 + grade2 + grade3 )*1.0/3.0
    end

    def display
        super
        puts "Score average : #{average}"
    end

end
students = []
student1=Student.new("Dung","Den",52,170,23,"vnd2001@gmail.com","0562410118","Viet Nam",10,7,8);
student2=Student.new("Hung","Den",65,168,23,"hung2001@gmail.com","0562410118","Viet Nam",8,9,8);
student3=Student.new("Luc","Den",49,165,23,"luc2001@gmail.com","0562410118","Viet Nam",9,8,9);
student4=Student.new("Dien","Den",62,167,23,"dien2001@gmail.com","0562410118","Viet Nam",9,10,9);

students.push(student1)
students.push(student2)
students.push(student3)
students.push(student4)
puts '=========Unsorted student list :========='
for i in 0..(students.length-1)
    puts "=====Student #{i+1} ====:"
    puts students[i].display
 end

 puts '=========Sorted student list :========='
 studentsort = students.sort_by{|student| [student.average]}.reverse
 for i in 0..(studentsort.length-1)
    puts "=====Sinh vien #{i+1} =====:"
    puts studentsort[i].display
 end