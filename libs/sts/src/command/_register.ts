import StsCommand from '../types/StsCommand';
import sampleDefine from './sample-define';
import sampleFunc from './sample-func';

const register = {
  'sample-define': sampleDefine,
  'sample-func': sampleFunc,
} satisfies Record<string, StsCommand>;

export default register;
