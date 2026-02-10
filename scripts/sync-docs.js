const { execSync } = require('child_process');
const fs = require('fs');
const path = require('path');

const YAMLRESUME_ROOT = path.resolve(__dirname, '../../yamlresume');
const WEB_Public_ROOT = path.resolve(__dirname, '../public/developer');

const PACKAGES = [
  'cli',
  'core',
  'create-yamlresume',
  'json2yamlresume',
  'playground'
];

function main() {
  console.log('Generating TypeDocs...');
  try {
    execSync('pnpm typedoc', { cwd: YAMLRESUME_ROOT, stdio: 'inherit' });
  } catch (error) {
    console.error('Failed to generate TypeDocs:', error);
    process.exit(1);
  }

  // Ensure destination directory exists
  if (!fs.existsSync(WEB_Public_ROOT)) {
    fs.mkdirSync(WEB_Public_ROOT, { recursive: true });
  }

  PACKAGES.forEach(pkgName => {
    const srcDir = path.join(YAMLRESUME_ROOT, 'packages', pkgName, 'docs');
    const destDir = path.join(WEB_Public_ROOT, pkgName);

    console.log(`Copying ${pkgName} docs to ${destDir}...`);

    if (fs.existsSync(destDir)) {
      fs.rmSync(destDir, { recursive: true, force: true });
    }

    // Ensure parent dir exists (it is WEB_Public_ROOT)

    if (fs.existsSync(srcDir)) {
      fs.cpSync(srcDir, destDir, { recursive: true });
    } else {
      console.warn(`Warning: Source directory not found: ${srcDir}`);
    }
  });

  console.log('Done!');
}

main();
