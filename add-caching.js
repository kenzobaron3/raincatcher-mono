#!/usr/bin/env node
const jsYaml = require('js-yaml');
const fs = require('fs');

let file = process.argv[2];
console.log(`processing file ${file}`);

let yaml = jsYaml.safeLoad(fs.readFileSync(file));
yaml.cache = {
  directories: ['node_modules']
};

yaml = jsYaml.safeDump(yaml);
fs.writeFileSync(file, yaml);