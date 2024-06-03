import StsCommand from '../types/StsCommand';

const proceedCommand = (command: StsCommand) => {
  if (typeof command === 'function') command();
  else if (typeof command === 'object' && command.run) command.run();
};

export default proceedCommand;
