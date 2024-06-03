import { spawn, spawnSync } from 'child_process';
import StsCommand from '../types/StsCommand';

const shutdown: StsCommand = () => spawnSync('shutdown', ['-s', '-t', '0']);

export default shutdown;
