
# USLang Programming Guide

## Getting Started

### Hello World

Your first USLang program:

```us
Say "Hello World".
```

**Run it:**
```bash
us.exe hello.us
```

**Output:**
```
Hello World
```

## Variables

### Declaring Variables

```us
Let name be text "Alice".
Let age be number 30.
```

### Using Variables

```us
Let greeting be text "Hello".
Say greeting.
Say "World".
```

**Output:**
```
Hello
World
```

## Arithmetic - The English Way

### Basic Operations

Instead of `+`, `-`, `*`, `/`, use English words:

```us
Let a be number 10.
Let b be number 5.
Let sum be number a plus b.
Let diff be number a minus b.
Let prod be number a times b.
Let quot be number a divided by b.

Say sum.      Note, 15
Say diff.     Note, 5
Say prod.     Note, 50
Say quot.     Note, 2
```

### Complex Expressions

```us
Let result be number 2 plus 3 times 4.
Say result.   Note, 20 (left-to-right evaluation: (2+3)*4)
```

## Working with Text

### String Variables

```us
Let name be text "Bob".
Let greeting be text "Hello".
Say greeting.
Say name.
```

**Output:**
```
Hello
Bob
```

### String Concatenation

Not directly supported, but you can output multiple statements:

```us
Say "Hello".
Say "World".
```

**Output:**
```
Hello
World
```

## Making Decisions with If/Else

### Simple Condition

```us
Let age be number 18.
If age is equal to 18.
Say "Come of age".
End if.
```

### If/Else

```us
Let score be number 75.
If score is greater than 70.
Say "Pass".
Otherwise.
Say "Fail".
End if.
```

### Multiple Comparisons

```us
Let x be number 10.
If x is greater than 5 and x is less than 15.
Say "In range".
End if.
```

### Comparison Operators

```
is greater than       (>)
is less than          (<)
is equal to           (==)
is not equal to       (!=)
is greater or equal to (>=)
is less or equal to   (<=)
```

## Loops - Repeat Code

### While Loop

```us
Let i be number 1.
Repeat while i is less than 4.
Say i.
Increase i by 1.
End repeat.
```

**Output:**
```
1
2
3
```

### For Loop (Count)

```us
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

### Practical Example - Times Table

```us
Let num be number 5.
Let i be number 1.
Repeat while i is less than 11.
Let product be number num times i.
Say product.
Increase i by 1.
End repeat.
```

**Output:**
```
5
10
15
20
25
30
35
40
45
50
```

## Functions - Reusable Code

### Function Without Parameters

```us
Create function sayHi.
Say "Hi there".
End function.

Use function sayHi.
```

**Output:**
```
Hi there
```

### Function With Parameters

```us
Create function greet with name.
Say "Hello".
Say name.
End function.

Use function greet with "Alice".
Use function greet with "Bob".
```

**Output:**
```
Hello
Alice
Hello
Bob
```

### Function With Multiple Parameters

```us
Create function add with a, b.
Let result be number a plus b.
Say result.
End function.

Use function add with 5, 3.
Use function add with 10, 20.
```

**Output:**
```
8
30
```

### Complex Function

```us
Create function describe with name, age, city.
Say "Name".
Say name.
Say "Age".
Say age.
Say "City".
Say city.
End function.

Use function describe with "Alice", 25, "NYC".
```

## Comments - Documenting Code

```us
Note, this is a comment.
Note, comments help explain the code.
Note, they are ignored when running.

Let x be number 5.
Note, x is now 5.
Say x.
```

## Increment and Decrement

### Increase

```us
Let counter be number 0.
Increase counter by 1.
Increase counter by 5.
Say counter.      Note, 6
```

### Decrease

```us
Let balance be number 100.
Decrease balance by 10.
Say balance.      Note, 90
```

## Practical Examples

### Temperature Converter

```us
Create function fahrenheit with celsius.
Let f be number celsius times 1.8 plus 32.
Say f.
End function.

Use function fahrenheit with 0.
Use function fahrenheit with 100.
Use function fahrenheit with 37.
```

**Output:**
```
32
212
98.6
```

### Factorial Calculator

```us
Create function factorial with n.
Let result be number 1.
Let i be number 2.
Repeat while i is less than n plus 1.
Let result be number result times i.
Increase i by 1.
End repeat.
Say result.
End function.

Use function factorial with 5.
```

**Output:**
```
120
```

### Number Guessing Game (Conceptual)

```us
Let secret be number 42.
Let guess be number 30.

If guess is equal to secret.
Say "Correct".
Otherwise.
If guess is less than secret.
Say "Too low".
Otherwise.
Say "Too high".
End if.
End if.
```

**Output:**
```
Too low
```

### Fibonacci Sequence

```us
Let a be number 0.
Let b be number 1.
Let i be number 0.

Repeat while i is less than 8.
Say a.
Let temp be number a plus b.
Let a be number b.
Let b be number temp.
Increase i by 1.
End repeat.
```

**Output:**
```
0
1
1
2
3
5
8
13
```

## Best Practices

### 1. Use Descriptive Variable Names

✅ **Good:**
```us
Let total_price be number 99.99.
Let customer_name be text "Alice".
```

❌ **Avoid:**
```us
Let x be number 99.99.
Let y be text "Alice".
```

### 2. Add Comments for Complex Logic

```us
Note, calculate the average of three numbers.
Let avg be number 10 plus 20 plus 30 divided by 3.
Say avg.
```

### 3. Use Functions for Reusable Code

❌ **Repetitive:**
```us
Say "Name".
Say "Alice".
Say "Age".
Say 25.

Say "Name".
Say "Bob".
Say "Age".
Say 30.
```

✅ **Better:**
```us
Create function showPerson with name, age.
Say "Name".
Say name.
Say "Age".
Say age.
End function.

Use function showPerson with "Alice", 25.
Use function showPerson with "Bob", 30.
```

### 4. Keep Functions Small and Focused

Each function should do one thing well.

### 5. Use Meaningful Loop Variables

```us
Repeat while counter is less than 10.
Say counter.
Increase counter by 1.
End repeat.
```

Rather than generic counters, use descriptive names.

## Common Mistakes

### 1. Missing Periods

❌ Wrong:
```us
Let x be number 5
Say x
```

✅ Correct:
```us
Let x be number 5.
Say x.
```

### 2. Using Symbols Instead of Words

❌ Won't work:
```us
Let sum = x + y.
```

✅ Correct:
```us
Let sum be number x plus y.
```

### 3. Forgetting Function End

❌ Wrong:
```us
Create function double with x.
Say x times 2.
```

✅ Correct:
```us
Create function double with x.
Say x times 2.
End function.
```

### 4. Using Reserved Keywords as Variables

❌ Won't work:
```us
Let number be number 5.
Let text be text "hello".
```

✅ Correct:
```us
Let count be number 5.
Let greeting be text "hello".
```

### 5. Type Mismatches

❌ Wrong:
```us
Let text_value be number "hello".
```

✅ Correct:
```us
Let text_value be text "hello".
```

## Debugging Tips

### Print intermediate values

```us
Let x be number 10.
Let y be number 20.
Say x.
Say y.
Let sum be number x plus y.
Say sum.
```

### Use comments to trace execution

```us
Note, starting calculation.
Let a be number 5.
Note, a is 5.
Let b be number a plus 10.
Note, b should be 15.
Say b.
```

### Test in REPL

```bash
us.exe
> Let x be number 5.
> Say x.
5
> Increase x by 10.
> Say x.
15
> exit
```

## Next Steps

1. **Run the examples** - try the example programs
2. **Write simple programs** - start with single statements
3. **Build complexity gradually** - add functions, loops, conditionals
4. **Read LANGUAGE_SPEC.md** - for detailed grammar reference
5. **Experiment** - try combinations and edge cases

## Resources

- **LANGUAGE_SPEC.md** - Complete formal specification
- **grammar.dot.pxt** - Grammar definition
- **examples/** - Sample programs
- **README.md** - Quick reference

---

Happy Programming in USLang! 🎉
