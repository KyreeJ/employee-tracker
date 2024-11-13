
import { QueryResult } from 'pg';
import { pool, connectToDb } from './connection.js';

await connectToDb();


pool.query('SELECT COUNT(id) AS total_count FROM department GROUP BY department_name', (err: Error, result: QueryResult) => {
  if (err) {
    console.log(err);
  } else if (result) {
    console.log(result.rows);
  }
});

pool.query('SELECT e.first_name,e.last_name,title, salary, m.first_name manager_firstname , m.last_name manager_lastname  From employee e join role on e.role_id=role.id left outer join employee m on e.manager_id=m.id', (err: Error, result: QueryResult) => {
  if (err) {
    console.log(err);
  } else if (result) {
    console.table(result.rows);
  }
});



 import inquirer from 'inquirer';

 inquirer
   .prompt([
     {
       type: 'input',
       message: 'departments',
             name: '',
    },
    {
       type: 'list',
      message: 'what department are you in',
       name: 'jobs',
      choices: ['Software Engineer,Project Manager,Data Analyst, Marketing Coordinator,senior manager'],
        },
    {
       type: 'input',
     message: 'what is your name',
      name: ['firstname' ,' lastname',]
    }
 ])
 .then((response) => {
    console.log(response)

  })