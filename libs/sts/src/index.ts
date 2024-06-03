import minimist from 'minimist';
import yargs from 'yargs';

const yargsArgv = yargs.argv;
const args = process.argv.slice(2);
const minimistArgs = minimist(process.argv.slice(2));
const cwd = process.cwd();
console.log('This is sts', { cwd, args, yargsArgv, minimistArgs });
