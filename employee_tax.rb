require 'sinatra'
require 'json'
require 'sinatra/json'
require_relative 'requirement_1_tax_computation.rb'
require 'httparty'
require 'pry'
require 'pg'

def run_sql(sql) 
    db =PG.connect(dbname: 'employees_db')
    employees = db.exec(sql)
    db.close
    return employees
end

get '/' do

    tax_output = HTTParty.post('http://localhost:4567/api') 
  

    employee_name = tax_output.values[0]["employee_name"]
    gross_monthly_income = tax_output.values[0]["gross_monthly_income"]
    monthly_income_tax = tax_output.values[0]["monthly_income_tax"]
    net_monthly_income = tax_output.values[0]["net_monthly_income"]
    # binding.pry

    erb :index, locals: {
        employee_name: employee_name,
        gross_monthly_income: gross_monthly_income,
        monthly_income_tax: monthly_income_tax,
        net_monthly_income: net_monthly_income,
    }
end


post '/api' do
    name = params['name']
    salary= params['salary'].to_i
    hash = { 'monthly_payslip' => generate_monthly_payslip(name, salary ) }
    monthly_income_tax = hash["monthly_payslip"]["monthly_income_tax"]
    time_date = Time.now.strftime("%c")

    run_sql("INSERT INTO employees(submission_time, name, annual_salary, monthly_income_tax) VALUES('#{time_date}','#{name}','#{salary}','#{monthly_income_tax}')")
  
 
    return json(hash)
    # binding.pry
    # # JSON.parse(hash)
    
end