import { execSync, spawnSync } from 'child_process';
import StsCommand from '../types/StsCommand';

const go: StsCommand = () => {
  console.log('Going up one directory');
  //   execSync('cd ..');
  execSync('cd ~', { stdio: 'inherit', shell: '/bin/zsh' });
};

export default go;
