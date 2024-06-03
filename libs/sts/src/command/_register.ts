import StsCommand from '../types/StsCommand';
import go from './go';
import sampleDefine from './sample-define';
import sampleFunc from './sample-func';
import shutdown from './shutdown';

const register = {
  'sample-define': sampleDefine,
  'sample-func': sampleFunc,
  shutdown: shutdown,
  go: go,
} satisfies Record<string, StsCommand>;

export default register;
