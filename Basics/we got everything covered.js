function generateString(n, k) {
    let s = "";
    let ch = 'a';
    
    for (let i = 0; i < k; i++) {
        s += ch;
        ch = String.fromCharCode(ch.charCodeAt(0) + 1);
    }
    
    let ans = "";
    for (let i = 0; i < n; i++) {
        ans += s;
    }
    
    return ans;
}

function runTests(testCases) {
    for (var i = 0; i < testCases.length; i++) {
        var n = testCases[i][0];
        var k = testCases[i][1];
        var result = generateString(n, k);
        process.stdout.write(result + '\n');
    }
}


const testCases = [
    [1, 2],
    [2, 1],
    [2, 2],
    [2, 3],
    [4],

];

runTests(testCases);
