import StsCommand from '../types/StsCommand';

const proceedCommand = (command: StsCommand) => {
  if (typeof command === 'function') {
    command();
  } else {
    command.run();
  }
};

export default proceedCommand;
