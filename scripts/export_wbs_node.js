const fs = require('fs');
const path = require('path');

// Mock window
global.window = {};

// Read the master data file
const masterDataPath = path.join(__dirname, '../docs/data/tm01_master_data.js');
const content = fs.readFileSync(masterDataPath, 'utf8');

// Execute the file content in the global context
eval(content);

// Now window.tm01MasterData should be populated
if (window.tm01MasterData && window.tm01MasterData.data && window.tm01MasterData.data.wbs) {
    console.log(JSON.stringify(window.tm01MasterData.data.wbs, null, 2));
} else {
    console.error("Failed to load WBS data from tm01_master_data.js");
    process.exit(1);
}
