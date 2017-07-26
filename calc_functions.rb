def valid_login(user,pass)
approved = {'user' => '2222', 'marv070' => '1234','john' => '5555'}
 counter = 0
  approved.each do |username, password|
    p"#{user}user params"
    p "#{username}username of hash"
    p"#{pass}pass from params"
    p "#{password} password of hash "
    if username == user && password == pass
      counter += 1
    end
  end
    if counter == 1
       redirect'/math?message=You have successfully logged in'
    else
      redirect'/?message=Invalid log in try again'
    end
end

def math(num1,num2,op)
  if op == "add"
    num1 + num2
  elsif
    op == "subtract"
    num1 - num2
  elsif 
    op == "divide"
    if num2 == 0
      redirect'/math?message=ERROR YOU CAN NOT DIVIDE BY ZERO'
    else
    num1.to_f/num2.to_f
    end
  else
    num1 * num2
  end
end

def symbol_converter(op)
  if op == "add"
    op = "+"
  elsif 
    op == "subtract"
    op = "-"
  elsif
    op == "multiply"
    op = "*"
  else
    op = "/"
  end
      
end