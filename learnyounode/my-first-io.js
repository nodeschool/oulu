var fs = require('fs');

var filePath = process.argv[2];
var fileContent = fs.readFileSync(filePath).toString();

var lines = fileContent.split('\n');

console.log(lines.length - 1);
