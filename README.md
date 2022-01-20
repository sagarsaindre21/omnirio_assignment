Prerequisites
The setups steps expect following tools installed on the system.

Github
Ruby [2.7.1]
Rails [6.0.2]
1. Check out the repository
bash git clone git@github.com:sagarsaindre21/omnirio_assignment.git

2. Start the Rails server
You can start the rails server using the command given below.

ruby rails s

And now you can visit the site with the URL http://localhost:3000

3. Call the api
You can visit http://localhost:3000/api/withdraw.json?input_amount=41
it shows the Output:
     {"Quarter":1,"Dime":1,"Nickel":1,"Penny":1}
     
4.You can visit http://localhost:3000/api/withdraw.json?input_amount=hello
It shows the Output:
     {}
     
5.You can visit http://localhost:3000/api/withdraw.json?input_amount=-12
It shows the Output:
     {}
     
     
     
