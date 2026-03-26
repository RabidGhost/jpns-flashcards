# Japanese Flashcards

Vocabulary flashcards for JPNS1012. You can download pre-rendered flashcards [here](../../releases/latest). Simply print them double-sided on a4 paper.

## Render Youself

Install [Typst](https://github.com/typst/typst), and then compile all flashcards with:

```sh
find flashcards -name "*.typ" -exec typst compile {} --root . \;
```
