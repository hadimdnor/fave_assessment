# requirement 1. 
    # 1. to come with tax computation 
    # 2. different salary different tax % 
    # 3. Then it will return an output in console:

            # Monthly Payslip for: "Ren"
            # Gross Monthly Income: $5000.00
            # Monthly Income Tax: $500.00
            # Net Monthly Income: $4500.00

    # 4. tax bracket 
            # The Tax Bracket is as follows
            # Salary Bracket	Rate
            # first 0 - 20000	0%
            # next 20001-40000	10%
            # next 40001-80000	20%
            # next 80001-180000	30%
            # 180001 and above	40%
            # Sample Tax Computation 1
            # Annual Salary 60000
    # 5. pseudi code: 
            # 1. create function named genreate monthly payslip. whcih the fucntion will output in console as follows:
                    # Monthly Payslip for: "Ren"
                    # Gross Monthly Income: $5000.00
                    # Monthly Income Tax: $500.00
                    # Net Monthly Income: $4500.00 
            # 2. to crete fucntion that will use tax bracket in calcuclation of monthly tax
                # if the annual salary is > 20k the tax will be 0%
                # if the annual salary is < 40k the first 20k will be tax 0% and next 20k will be tax 10%
                # if the annual salary is < 80k the ..first 20k will be tax 0%, the next 20k will be tax 10% and the next 40k will be tax 20%
                # if the annual salary is <180k the first 20k will be tax 0%, the next 20k will be tax 10% , the next 40k will be tax 20% and the next 100k will be tax 30%.
                # if the annual salary is >180k the first 20k will be tax 0%, the next 20k will be tax 10% , the next 40k will be tax 20%, the next 100k will be tax 30% and the amount after 180k will be tax 40%. 

# requirement 2.
        # Create a POST REST API request to expose your function. Request parameters should include employee_name and annual_salary. The response body should return JSON format. Add unit tests where you think its relevant. You can use:

        # Rails - https://rubyonrails.org/
        # Sinatra - http://sinatrarb.com/
        # {
        #   "employee_name": string,
        #   "gross_monthly_income": string,
        #   "monthly_income_tax": string,
        #   "net_monthly_income": string,
# }

        # get and post request to get the input and being tabulated in JSON format. 
        # use HTTParty to expose the data and expose the fucntion. 

# requirement 3.
        # When compute monthly salary POST API is invoked, Then write the following information in a database of your choice, you can use any local or cloud database

        # 1. use psql to store the data
        # 2. post request were used to expose the data in JSON format.
        # 3. databse formulation = schema.sql file

# requirement 4.

        # GET API to list out all information from Requirement 3 on JSON Format:

        # get were use to get the data store in databse. 
        # call the data in JSON format. 
