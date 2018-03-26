ned = Manager.new("Ned","Founder",1000000)
darren = Manager.new("Darren", "TA Manager", 78000, ned)
ned.add_employees << darren
shawna = Employee.new("Shawna","TA",12000,darren)
darren.add_employees << shawna
david = Employee.new("david","TA",10000,darren)
darren.add_employees << david
