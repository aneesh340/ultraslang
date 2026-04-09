# USLang Language Specification

## Overview

USLang is an **ultra beginner-friendly programming language** designed to read like natural English.

**File Extension:** `.us`  
**Interpreter:** `us.exe` (compiled from Rust)  
**Grammar Definition:** `grammar.dot.pxt`

## Design Philosophy

1. **Extreme Simplicity** - Every keyword is an English word
2. **No Symbols** - Only periods, commas, and quotes allowed
3. **Beginner-Focused** - No programming experience needed to read or write USLang
4. **Natural Language** - Code reads like sentences

## Syntax Overview

### 1. Variables

#### Declaration Syntax

```
Let <identifier> be <type> <value>.
```

#### Types

- `number` - integer or floating-point value
- `text` - string enclosed in double quotes

#### Examples

```
Let name be text "Alice".
Let age be number 25.
Let height be number 5.9.
```

#### Valid Identifiers

- Start with: `[a-zA-Z_]`
- Continue with: `[a-zA-Z0-9_]`
- Case-sensitive
- Examples: `name`, `age`, `_temp`, `user_age`

### 2. Output / Printing

#### Syntax

```
Say <value>.
```

#### Forms

- **Literal string:** `Say "Hello World".`
- **Variable value:** `Say name.`

#### Example

```
Let greeting be text "Hello".
Say greeting.
Say "Goodbye".
```

### 3. Arithmetic Operations

Operations use **English words** instead of symbols:

| Operation | Symbol | USLang |
|-----------|--------|--------|
| Addition | `+` | `plus` |
| Subtraction | `-` | `minus` |
| Multiplication | `*` | `times` |
| Division | `/` | `divided by` |

#### Examples

```
Let a be number 10 plus 5.           Note, Result: 15
Let b be number 20 minus 3.          Note, Result: 17
Let c be number 4 times 5.           Note, Result: 20
Let d be number 100 divided by 5.    Note, Result: 20
```

#### Arithmetic Expressions

Multiple operations can be chained:

```
Let total be number 5 plus 3 times 2 divided by 2.
```

**Note:** Operations are evaluated left-to-right (no operator precedence).

### 4. Conditional Statements

#### If/Else Structure

```
If <condition>.
<statements>
Otherwise.
<statements>
End if.
```

#### Conditions

```
<variable> is <comparison> <value>
```

#### Comparison Operators

| Operator | English | Example |
|----------|---------|---------|
| `>` | `is greater than` | `age is greater than 18` |
| `<` | `is less than` | `count is less than 10` |
| `==` | `is equal to` | `name is equal to "Alice"` |
| `!=` | `is not equal to` | `status is not equal to "done"` |
| `>=` | `is greater or equal to` | `score is greater or equal to 80` |
| `<=` | `is less or equal to` | `time is less or equal to 60` |

#### Logical Operators

- `and` - both conditions must be true
- `or` - at least one condition must be true

#### Example

```
Let age be number 20.
If age is greater than 17.
Say "Adult".
Otherwise.
Say "Minor".
End if.
```

#### Complex Condition Example

```
If age is greater than 18 and score is greater than 80.
Say "Qualified".
Otherwise.
Say "Not Qualified".
End if.
```

### 5. Loops

#### While Loop

```
Repeat while <condition>.
<statements>
End repeat.
```

#### Example

```
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

#### For Loop (Count)

```
Count from <start> to <end>.
<statements>
End count.
```

#### Example

```
Count from 1 to 3.
Say "Counting".
End count.
```

**Output:**
```
Counting
Counting
Counting
```

### 6. Functions

#### Definition Syntax

```
Create function <function_name> with <param1>, <param2>.
<statements>
End function.
```

#### Call Syntax

```
Use function <function_name> with <arg1>, <arg2>.
```

#### Examples

##### No Parameters

```
Create function greet.
Say "Hello".
End function.

Use function greet.
```

##### With Parameters

```
Create function add with a, b.
Let sum be number a plus b.
Say sum.
End function.

Use function add with 5, 3.
```

**Output:**
```
8
```

##### Complex Function

```
Create function describe with name, age.
Say "Name".
Say name.
Say "Age".
Say age.
End function.

Use function describe with "Alice", 25.
```

### 7. Increment/Decrement

#### Increment

```
Increase <variable> by <number>.
```

#### Decrement

```
Decrease <variable> by <number>.
```

#### Examples

```
Let counter be number 0.
Increase counter by 1.      Note, counter is now 1
Decrease counter by 2.      Note, counter is now -1
```

### 8. Comments

#### Syntax

```
Note, <comment text>.
```

#### Example

```
Let x be number 5.
Note, initialize x to 5.
Say x.
```

Comments are ignored during execution.

## Restricted Syntax

### ❌ NOT ALLOWED

The following characters and constructs are **forbidden** in USLang:

- Parentheses: `( )`
- Brackets: `[ ]`
- Curly braces: `{ }`
- Semicolons: `;`
- Colons: `:`
- Math symbols: `+ - * / =`
- Logical symbols: `== != <= >=`
- Pipes: `|`
- Ampersands: `&`
- Asterisks: `*`

### ✅ ONLY ALLOWED PUNCTUATION

- **Period:** `.` (ends statements)
- **Comma:** `,` (separates items, used in comments)
- **Double Quote:** `"` (encloses strings)

## Keywords (Reserved Words)

The following words are reserved and cannot be used as variable or function names:

```
Let be number text Say
Create function Use with
If Otherwise End Repeat while
Increase Decrease by
plus minus times divided
is greater less equal to not
and or
Count from
Note
```

## Data Types

### Number

- **Integer:** `5`, `100`, `-42`
- **Float:** `3.14`, `2.5`, `10.0`
- Internally stored as 64-bit floating-point

### Text

- String enclosed in double quotes: `"Hello"`, `"World"`
- Cannot contain unescaped quotes
- Empty strings allowed: `""`

## Expression Evaluation

### Arithmetic

```
Let result be number 5 plus 10 times 2.
```

Operations evaluated **left-to-right** (left associative):
1. `5 plus 10` = `15`
2. `15 times 2` = `30`

### Variable Substitution

Variables are automatically resolved in expressions:

```
Let x be number 10.
Let y be number 5.
Let z be number x plus y.    Note, z is 15
```

## Example Programs

### Factorial Calculator

```
Let n be number 5.
Let factorial be number 1.
Let i be number 1.

Repeat while i is less than n plus 1.
Let factorial be number factorial times i.
Increase i by 1.
End repeat.

Say "Factorial of".
Say n.
Say "is".
Say factorial.
```

### Fibonacci Sequence

```
Let a be number 0.
Let b be number 1.

Count from 1 to 7.
Say a.
Let temp be number a plus b.
Let a be number b.
Let b be number temp.
End count.
```

### Temperature Converter

```
Create function convert with celsius.
Let fahrenheit be number celsius times 1.8 plus 32.
Say fahrenheit.
End function.

Use function convert with 0.
Use function convert with 100.
```

## Error Handling

The interpreter provides error messages in the following format:

```
Parse error: Expected <token>, found <token>
Runtime error: Variable '<name>' not defined
Runtime error: Division by zero
Runtime error: Function '<name>' not defined
```

Errors include the token that caused the problem for easier debugging.

## Standard Library

USLang does not have a built-in standard library. All functionality is provided through language constructs:

- **Output:** `Say`
- **Arithmetic:** `plus`, `minus`, `times`, `divided by`
- **Control Flow:** `If`, `Repeat while`, `Count`
- **Functions:** `Create function`, `Use function`

## REPL Mode

interactive shell:

```bash
> Let x be number 5.
> Say x.
5
> Let greeting be text "Hello".
> Say greeting.
Hello
> exit
```

## Grammar Summary

```
Program       := Statement*

Statement     := VarDeclaration
               | PrintStatement
               | FunctionDef
               | FunctionCall
               | IfStatement
               | LoopStatement
               | Increment
               | Decrement
               | Comment

VarDeclaration := "Let" Identifier "be" VarType Value "."

VarType       := "number" | "text"

PrintStatement := "Say" (Literal | Identifier) "."

FunctionDef   := "Create" "function" Identifier ("with" ParamList)? "." 
                 Statement* 
                 "End" "function" "."

FunctionCall  := "Use" "function" Identifier ("with" ArgList)? "."

IfStatement   := "If" Condition "." Statement* 
                 ("Otherwise" "." Statement*)? 
                 "End" "if" "."

LoopStatement := "Repeat" "while" Condition "." Statement* "End" "repeat" "."
               | "Count" "from" Number "to" Number "." Statement* "End" "count" "."

Condition     := SimpleComparison (LogicalOp SimpleComparison)*

SimpleComparison := Identifier CompOp Value

CompOp        := "is" ("greater" "than" | "less" "than" | "equal" "to" | 
                       "not" "equal" "to" | "greater" "or" "equal" "to" | 
                       "less" "or" "equal" "to")

ArithmeticOp  := "plus" | "minus" | "times" | "divided" "by"

Comment       := "Note" "," CommentText "."
```

---

**Version:** 1.0  
**Created:** 2026
