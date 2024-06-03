import minimist from 'minimist';
import yargs from 'yargs';
import register from './command/_register';
import proceedCommand from './utils/proceedCommand';

const yargsArgv = yargs.argv;
const args = process.argv.slice(2);
const minimistArgs = minimist(process.argv.slice(2));
const cwd = process.cwd();
console.log('This is sts2', { cwd, args, yargsArgv, minimistArgs });

const [commandName] = minimistArgs._;

const command = register[commandName];

proceedCommand(command);
