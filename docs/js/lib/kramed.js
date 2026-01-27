/**
 * kramed.js - Lightweight Markdown Parser for TM01
 * Supports: Headers, Tables, Lists, Blockquotes, Basic Formatting
 */

function kramed(str) {
    if (!str) return '';

    // 1. Normalize Newlines (Handle escaped \n from JSON)
    let text = str.replace(/\\n/g, '\n').replace(/\r/g, '');

    // 2. Escape HTML (basic)
    text = text.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;');

    // 3. Block Elements
    // Headers
    text = text.replace(/^# (.*$)/gim, '<h1>$1</h1>');
    text = text.replace(/^## (.*$)/gim, '<h2>$1</h2>');
    text = text.replace(/^### (.*$)/gim, '<h3>$1</h3>');

    // Horizontal Rules
    text = text.replace(/^---$/gim, '<hr>');

    // Blockquotes
    text = text.replace(/^> (.*$)/gim, '<blockquote>$1</blockquote>');

    // Tables (Simple Parser)
    // Cleanup separator lines
    text = text.replace(/^\|[-:| ]+\|$/gim, '');

    // Convert data rows: | cell | cell |
    text = text.replace(/^\|(.*)\|$/gim, function (match, content) {
        const cells = content.split('|').map(c => `<td>${c.trim()}</td>`).join('');
        return `<tr>${cells}</tr>`;
    });

    // Wrap contiguous TRs in TABLE
    text = text.replace(/(<tr>.*?<\/tr>\n?)+/gim, '<table>$&</table>');

    // Lists
    text = text.replace(/^\s*-\s+(.*$)/gim, '<li>$1</li>');
    text = text.replace(/(<li>.*<\/li>\n?)+/gim, '<ul>$&</ul>');

    // 4. Inline Elements
    text = text.replace(/\*\*(.*?)\*\*/g, '<strong>$1</strong>');
    text = text.replace(/\*(.*?)\*/g, '<em>$1</em>');
    text = text.replace(/`([^`]+)`/g, '<code>$1</code>');

    // 5. Final Cleanup
    text = text.replace(/\n/g, '<br>'); // Convert remaining newlines to BR

    // Remove BRs inside key block elements to prevent layout breakage
    text = text.replace(/<\/ul><br>/g, '</ul>');
    text = text.replace(/<\/table><br>/g, '</table>');
    text = text.replace(/<\/h1><br>/g, '</h1>');
    text = text.replace(/<\/h2><br>/g, '</h2>');
    text = text.replace(/<\/h3><br>/g, '</h3>');
    text = text.replace(/<\/blockquote><br>/g, '</blockquote>');

    return text;
}

// Export if module system is present (optional)
if (typeof module !== 'undefined') module.exports = kramed;
