import { spawnSync } from 'child_process';
import StsCommand from '../types/StsCommand';

const shutdown: StsCommand = () => spawnSync('shutdown.exe', ['-s', '-t', '0']);

export default shutdown;
