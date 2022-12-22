import os
import csv
import datetime

os.system('cls')

csvpath = os.path.join('employees.csv')

birth = []
hire = []
birth_n = []
hire_n = []
emp_no = []
emp_title = []
first_name = []
last_name = []
sex = []

with open(csvpath, 'r') as csvfile:

    csvreader = csv.reader(csvfile, delimiter = ',')
    csv_header = next(csvreader)

    for row in csvreader:
        birth.append(row[2])
        hire.append(row[6])
        emp_no.append(row[0])
        emp_title.append(row[1])
        first_name.append(row[3])
        last_name.append(row[4])
        sex.append(row[5])

for x in birth:
    birth_n.append(datetime.datetime.strptime(x, '%m/%d/%Y').strftime('%Y-%m-%d'))

for x in hire:
    hire_n.append(datetime.datetime.strptime(x, '%m/%d/%Y').strftime('%Y-%m-%d'))

with open('employees_n.csv', 'w', newline='') as file:
    writer = csv.writer(file)
    writer.writerow(["emp_no", "emp_title", "birth_date", "first_name", "last_name", "sex", "hire_date"])
    for x in range(len(emp_no)):
        writer.writerow([emp_no[x],
            emp_title[x],
            birth_n[x],
            first_name[x],
            last_name[x],
            sex[x],
            hire_n[x]])
