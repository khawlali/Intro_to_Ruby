# Hash

Employees = {
    10 =>{name:"Ahmed",salary:1000},
    21=>{name:"Mohamed",salary:2000},
    113=>{name:"Mahmoud",salary:5000},
    4=>{name:"Yassin",salary:3000},
    52=>{name:"Taha",salary:4000},
    102=>{name:"Khadija",salary:nil},
    64=>{name:"Sara",salary:5000},
    37=>{name:"Nadine",salary:5000},
    88=>{name:"Doaa",salary:4000},
    90=>{name:"Iman",salary:4000},
    103=>{name:"Khadija",salary:1000},
    12=>{name:"Kholod",salary:nil},
    15=>{name:"Said",salary:nil},
    38=>{name:"Nadine",salary:5000},
    89=>{name:"Doaa",salary:4000},
    91=>{name:"Iman",salary:4000},
    104=>{name:"Khadija",salary:1000},
    17=>{name:"Kholod",salary:nil},
    14=>{name:"Said",salary:nil},
    }

    puts "--I--" 

    puts "Emplyees names: "
    Employees.each_key do |key|
      puts Employees[key][:name]
    end

    puts "--II--"

    puts Employees.keys

    puts "--III--" 

    max =0
    Employees.each_key do |i|
      unless Employees[i][:salary] == nil
        if Employees[i][:salary] >=  max
          max = Employees[i][:salary]
        end
      end
    end
    puts "Emloyees with highest salary:"
    Employees.each_key do |i|
      if Employees[i][:salary] ==  max
        puts Employees[i]
      end
    end

    puts "--IV--"

    min =20000
    Employees.each_key do |i|
      unless Employees[i][:salary] == nil
        if Employees[i][:salary] <=  min
          min = Employees[i][:salary]
        end
      end
    end
    puts "Emloyees with lowest salary:"
    Employees.each_key do |i|
      if Employees[i][:salary] ==  min
        puts Employees[i]
      end
    end

    puts "--V--"

    total =0
    num=0
    
    Employees.each_key do |i|
      unless Employees[i][:salary] == nil
        total += Employees[i][:salary]
        num += 1
      end
    end
    puts "Average Salaries is :" + (total/num).to_s
    
    puts "--VI--"

    Employees.each_key do |i|
        if Employees[i][:salary] == nil
          Employees.delete(i)
        end
      end
      puts Employees

