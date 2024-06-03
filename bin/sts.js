const { spawnSync } = require('child_process');
const { dirname, join } = require('path');
const { existsSync } = require('fs');

try {
  require('../dist/sts/index');
} catch (e) {
  //? error happend, probably not compiled file
  const repoRoot = dirname(__dirname);
  const haveDist = existsSync(join(repoRoot, 'dist/index.js'));
  if (!haveDist) {
    spawnSync('yarn', ['build'], {
      cwd: repoRoot,
      stdio: 'ignore',
    });
    require('../dist/sts/index');
  } else {
    console.error(e);
  }
}
