import fs from 'fs';
import inquirer from 'inquirer';

function department() {
    console.log("Department");
}

inquirer
    .prompt([
        {
            type: 'input',
            message: 'Enter your department:',
            name: 'department',
        },
        {
            type: 'list',
            message: 'What department are you in?',
            name: 'jobs',
            choices: [
                'Software Engineer',
                'Project Manager',
                'Data Analyst',
                'Marketing Coordinator',
                'Senior Manager'
            ],
        },
        {
            type: 'input',
            message: 'What is your name?',
            name: 'firstname',
        },
        {
            type: 'input',
            message: 'What is your last name?',
            name: 'lastname',
        },
        {
            type: 'input',
            message: 'What is your ID?',
            name: 'jobId',
        },
        {
            type: 'input',
            message: 'What is your manager\'s first name?',
            name: 'managerFirstName',
        }
    ])
    .then((response) => {
        console.log(response);
    })

