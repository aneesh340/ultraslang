# USLang - Ultra Beginner-Friendly Programming Language

USLang is an **ultra beginner-friendly programming language** that reads like **simple English sentences**.

## 🎯 Core Vision

- **Extremely easy to read** - reads like natural English
- **No complex syntax** - only simple, natural language-like instructions
- **Only allowed punctuation**: `.` (period), `,` (comma), `"` (quotes)
- **Executable via** `us.exe` (compiled Rust interpreter)

## 🚀 Quick Start

### Build the Interpreter

```bash
cargo build --release
```

### Run a Program

```bash
# File mode
./us example.us

# REPL mode (interactive)
./us
```

## 📝 Language Syntax

### 1. Variables

```us
Let name be text "Alice".
Let age be number 25.
Let total be number 10 plus 5.
```

**Types:**
- `number` - integers and decimals
- `text` - strings (enclosed in quotes)

### 2. Output

```us
Say "Hello World".
Say name.
```

### 3. Arithmetic Operations (IN WORDS)

```us
Let a be number 10 plus 5.
Let b be number 20 minus 3.
Let c be number 4 times 5.
Let d be number 20 divided by 4.
```

Operations:
- `plus` → `+`
- `minus` → `-`
- `times` → `*`
- `divided by` → `/`

### 4. Conditions

```us
Let age be number 18.
If age is greater than 17.
Say "Adult".
Otherwise.
Say "Minor".
End if.
```

**Comparison Operators:**
- `is greater than` → `>`
- `is less than` → `<`
- `is equal to` → `==`
- `is not equal to` → `!=`
- `is greater or equal to` → `>=`
- `is less or equal to` → `<=`

### 5. Loops

#### While Loop

```us
Let counter be number 1.
Repeat while counter is less than 5.
Say counter.
Increase counter by 1.
End repeat.
```

#### For Loop (Count)

```us
Count from 1 to 5.
Say "Counting".
End count.
```

### 6. Functions

```us
Create function greet with name, age.
Say "Hello".
Say name.
End function.

Use function greet with "Alice", 25.
```

### 7. Comments

```us
Note, this is a comment explaining the code.
```

## 📦 Example Programs

### hello.us - Basic Output

```us
Let name be text "World".
Say "Hello".
Say name.
```

**Output:**
```
Hello
World
```

### arithmetic.us - Math Operations

```us
Let x be number 5.
Let y be number 3.
Let sum be number x plus y.
Say "Sum is".
Say sum.
```

**Output:**
```
Sum is
8
```

### conditional.us - If/Else

```us
Let age be number 20.
If age is greater than 17.
Say "You are an adult".
Otherwise.
Say "You are a minor".
End if.
```

**Output:**
```
You are an adult
```

### loop.us - Repetition

```us
Let counter be number 1.
Repeat while counter is less than 5.
Say counter.
Increase counter by 1.
End repeat.
```

**Output:**
```
1
2
3
4
```

### function.us - Functions

```us
Create function greet with name.
Say "Hello".
Say name.
End function.

Use function greet with "Alice".
```

**Output:**
```
Hello
Alice
```

### 🚀 advanced.us - Complex Program

```us
Let x be number 10.
Let y be number 5.

Create function multiply with a, b.
Let result be number a times b.
Say result.
End function.

Use function multiply with x, y.
```

**Output:**
```
50
```

## 🧩 Grammar Rules

See [grammar.dot.pxt](grammar.dot.pxt) for the formal BNF-style grammar definition.

**Key Rules:**
- All statements end with a period `.`
- Function parameters and arguments separated by commas `,`
- Strings enclosed in double quotes `"`
- NO parentheses, brackets, braces, semicolons, or symbols

## 🔄 Variable Increment/Decrement

```us
Let counter be number 0.
Increase counter by 1.
Decrease counter by 2.
```

## 🔥 Key Features

✅ Natural English-like syntax  
✅ NO symbols or complex punctuation  
✅ Only allowed: `.`, `,`, `"`  
✅ Beginner-friendly error messages  
✅ Fast compiled execution  
✅ REPL interactive mode  
✅ Full support for variables, functions, loops, conditionals  

## ❌ NOT Allowed

- Parentheses `( )`
- Brackets `[ ]`
- Curly braces `{ }`
- Semicolons `;`
- Colons `:`
- Math symbols `+ - * / = == != <= >=`

## 📖 Use Cases

- **Educational tool** for teaching programming basics
- **Non-programmers** can read and understand code
- **Accessible language** for beginners
- **Proof of concept** for English-like DSLs

## 🏗️ Project Structure

```
uslang/
├── src/
│   └── main.rs           # Complete lexer, parser, and executor
├── examples/
│   ├── hello.us
│   ├── arithmetic.us
│   ├── conditional.us
│   ├── loop.us
│   ├── function.us
│   └── advanced.us
├── Cargo.toml
├── grammar.dot.pxt        # Formal grammar rules
└── README.md
```

## 🛠️ Implementation Details

**Lexer** - Tokenizes source code, converts English keywords to tokens  
**Parser** - Builds Abstract Syntax Tree (AST) following grammar rules  
**Executor** - Interprets the AST and executes statements  

All written in **Rust** for speed and safety.

## 📝 License

MIT

---

**Created:** 2026  
**Language:** Rust  
**Type:** Compiled Interpreter
