class MarksheetGenerator 
    def student_info 
      puts "Please Enter the following details : "
     puts "Enter the name of the Student "
     stud_name = gets.chomp
     puts "Enter the class (in roman numbers) of the Student "
     stud_class = gets.chomp
     puts "Enter the roll number of the Student "
     roll_number = gets.chomp.to_i
    end
    
    
   def get_marks
    puts "Enter the number of Subjects:"
    @total_subjects = gets.chomp.to_i
    puts "Enter the marks you have got in each subject:"
    marks = []
    @total_marks = 0
    for i in 0...@total_subjects
      print "Enter marks for subject #{i + 1}: "
      mark = gets.chomp.to_i
      marks.push(mark)
      @total_marks += mark
    end
  end
  
    
    def computation
      @average = @total_marks / @total_subjects
      @percentage = (@average * 100) / 100
      puts "The Average marks of the student is #{@average}.\n The Percentage of the student is #{@percentage}."
    end 
    
    def assign_grade 
      case @percentage
        when 90..100 
          puts "Congratulations ! You have got 'A' grade \n Remarks - Excellent\n" 
        when 80..90
          puts "Congratulations ! You have got 'B' grade \n Remarks - Very Good Work\n"
        when 70..80
          puts "Congratulations ! You have got 'C' grade \n Remarks - Good Work\n"
        when 60..70
          puts "Congratulations ! You have got 'D' grade \n Remarks -  Keep Improving \n"
        else 
          puts "You have got 'F' grade \n Remarks -  There's a lot of need to Improve "
        end 
    end 
  end 
       
       
  obj = Marksheet_Generator.new 
  
  obj.student_info
  obj.get_marks
  obj.computation
  obj.assign_grade