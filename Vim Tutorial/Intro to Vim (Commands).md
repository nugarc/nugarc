**VIM COMMANDS 🙋🏻‍♀️**  
If you ever need help, feel free to contact me directly at: [https://twitter.com/seemcat](https://twitter.com/seemcat) 

**Insert**

| i | Start typing before your cursor. |
| :---: | :---- |
| a | Start typing after your cursor. |
| I | Start typing at the beginning of the line. |
| A | Start typing at the end of the line. |
| o | Start typing in a new line after your cursor. |
| O | Start typing in a new line before your cursor. |

\*To get out of insert mode, press the **ESC** button.

**Navigate**

| gg | Takes your cursor to the beginning of the file. |
| :---: | :---- |
| G | Takes your cursor to the end of the file. |
| $ | Takes your cursor to the end of the line. |
| 0 | Takes your cursor to the beginning of the line. |
| { | Takes your cursor to the next space of a paragraph in an upward direction. |
| } | Takes your cursor to the next space of a paragraph in a down direction. |
| w | Takes your cursor to the next word to the right. |
| W | Takes your cursor to the next word separated by a space to the right.  |
| b | Takes your cursor to the next word to the left. |
| B | Takes your cursor to the next word separated by a space to the left. |

**Search**

| fj | Lets you find the closest j to the right of the line that you’re on.  |
| :---: | :---- |
| FM | Lets you find the closest M to the left of the line that you’re on.  |
| /hi | Lets you find the word hi throughout the file. |
| n | Lets you navigate rightwards through each hi that was found. |
| N | Lets you navigate leftwards through each hi that was found.  |
| \# | Lets you find the word that your cursor is on throughout the file and navigate leftwards through each found word. |
| \* | Lets you find the word that your cursor is on throughout the file and navigate rightwards through each found word.  |

**Edit**

| d | Deletes something. That something is usually one of our navigation demands. |
| :---: | :---- |
| df) | Deletes everything up until ), including ). |
| dt) | Deletes everything up until ), excluding ). |
| 5dw | Deletes 5 words. Mind you, it also treats symbols such as \! and ( and , and etc. as words.  |
| dd | Deletes the entire line that your cursor is on. |
| p | Pastes to the right of the cursor. If you copied an entire line then it would get pasted on the next line of the cursor. |
| P | Pastes to the left of the cursor. If you copied an entire line then it would get pasted on the line before the cursor.  |
| di | Deletes within specific characters. |
| dit | Deletes whatever is within the tag that your cursor is currently on. |
| di( | Deletes whatever is within the parenthesis that your cursor is currently on. |
| dat | Deletes the entire tag; everything that is in the tag and also the opening and closing tags themselves. |
| ci | Is like di but on steroids. It deletes within specific characters and automatically goes into insert mode. |
| ci’ | Deletes whatever is inside the closest ‘ and automatically puts you into insert mode. |
| cit | Deletes whatever is inside the closest tag and automatically puts you into insert mode.  |

