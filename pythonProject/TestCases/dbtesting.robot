*** Settings ***
Library  SeleniumLibrary
Library  DatabaseLibrary
Library  OperatingSystem
Suite Setup     Connect To DataBase    pymysql     ${DBName}   ${DBUsername}   ${DBPassword}   ${DBHost}   ${DBPort}
Suite Teardown      Disconnect From Database
Library  SeleniumLibrary
Library  DatabaseLibrary
Library  OperatingSystem

*** Variables ***
${DBName}   mydb
${DBUsername}   root
${DBPassword}   root
${DBHost}   localhost
${DBPort}   3306

*** Test Cases ***
#Create Person Table
#    ${output}=  Execute SQL String  Create Table person (id integer,first_name vchar(20),last_name vchar(20));
#    log to console  ${output}
#    should be equal as string   ${output}   None
#Inserting Data in personal table
    #Single Record
#    ${output}=  Execute SQL String  Insert into person values(101),'john','candy');

    #Multiple Records
#    ${output}=  Execute SQL Script  ./TestCases/mydb_person_insertData.sql
#    log to console  ${output}
#    should be equal as string   ${output}   None
Check David Record in Person Table
    check if exists in database     select id from mydb.person where first_name="David";
Check Jio Record Not in Person Table
    check if not exists in database     select id from mydb.person where first_name="jio";
Verify Row Count is Zero
    row count is 0      SELECT * FROM   mydb.person WHERE first_name='xyz';
Verify Row Count is Equal to Some Value
    row count is equal to x      SELECT * FROM   mydb.person WHERE first_name='David';  1
Verify Row Count is Greater then Some Value
    row count is greater then x      SELECT * FROM   mydb.person WHERE first_name='David';  0
Verify Row Count is less then Some Value
    row count is less then x      SELECT * FROM   mydb.person WHERE first_name='David';  5
Update Record in person table
    ${output}=  Execute SQL String  Update mydb.person set first_name='jio' where id=104;
    log to console  ${output}
    should be equal as strings  ${output}   None
Retrive Record from person table
    @{queryResult} =    query   select * from mydb.person
    log to console  many    @{queryResult}
Delete Record
    ${output}=  Execute SQL String  Delete from mydb.person
    should be equal as strings  ${output}   None
