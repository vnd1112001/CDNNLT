class Student
    @name_206;
    @age_206;
    @math_206;
    @physical_206;
    @chemistry_206;

    def initialize(name, age, math, physical, chemistry)
      @name_206 = name;
      @age_206 = age;
      @math_206 = math;
      @physical_206 = physical;
      @chemistry_206 = chemistry;
    end

    def name
        @name_206
      end
    def name=(name)
        @name_206 = name
    end

    def age
        @age_206
      end
    def age=(age)
        @age_206 = age
    end

    def math
        @math_206
      end
    def math=(math)
        @math_206 = math
    end


    def physical
        @physical_206
      end
    def physical=(physical)
        @physical_206 = physical
    end

    def  chemistry
        @chemistry_206
      end
    def  chemistry=( chemistry)
        @chemistry_206 =  chemistry
    end

    def average 
        (@math_206 + @physical_206 + @chemistry_206 )/3
    end

    def toString 
        print "Name: ", name
        print "Age: ", age
        print "Average: ", average
    end
end


print "Enter student name : "
name = gets;

print "Enter student age : "
age = gets;

print "Enter student math : "
math = gets.to_i;

print "Enter student physical : "
physical = gets.to_i;

print "Enter student chemistry : "

chemistry = gets.to_i;
student = Student.new(name,age,math,physical,chemistry);
student.toString