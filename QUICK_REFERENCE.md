# USLang Quick Reference

## Variables

```us
Let name be text "Alice".              Note, text/string
Let age be number 25.                  Note, number (int or float)
Let height be number 5.9.              Note, decimal number
```

## Output

```us
Say "Hello World".                     Note, literal string
Say name.                              Note, variable value
```

## Arithmetic (Use English Words!)

```us
Let sum be number 5 plus 3.            Note, 8
Let diff be number 10 minus 4.         Note, 6
Let prod be number 3 times 7.          Note, 21
Let quot be number 20 divided by 4.    Note, 5
```

## Comparisons

```us
x is greater than 5           Note, x > 5
x is less than 10             Note, x < 10
x is equal to 7               Note, x == 7
x is not equal to 0           Note, x != 0
x is greater or equal to 5    Note, x >= 5
x is less or equal to 10      Note, x <= 10
```

## Logical Operators

```us
If x is greater than 5 and y is less than 10.
If x is equal to 1 or x is equal to 2.
```

## Conditionals

```us
If age is greater than 18.
Say "Adult".
Otherwise.
Say "Minor".
End if.
```

## While Loop

```us
Let i be number 1.
Repeat while i is less than 5.
Say i.
Increase i by 1.
End repeat.
```

## For Loop

```us
Count from 1 to 5.
Say "Counting".
End count.
```

## Functions

```us
Create function add with a, b.
Let result be number a plus b.
Say result.
End function.

Use function add with 5, 3.
```

## Increment/Decrement

```us
Increase counter by 1.
Decrease balance by 10.
```

## Comments

```us
Note, this explains the code.
```

## Complete Example

```us
Let name be text "Alice".
Let age be number 25.

Create function greet with person.
Say "Hello".
Say person.
End function.

Use function greet with name.

If age is greater than 18.
Say "Adult".
End if.
```

## Rules to Remember

✅ **Every statement ends with a period `.`**
✅ **No parentheses, brackets, or braces allowed**
✅ **Use words for operations: plus, minus, times, divided by**
✅ **Use words for comparisons: is greater than, is less than**
✅ **Strings enclosed in double quotes `""`**
✅ **Variables and functions are case-sensitive**

## Keywords (Can't use as names)

```
Let be number text Say
Create function Use with
If Otherwise End Repeat while
Increase Decrease by
plus minus times divided
is greater less equal to not
and or Count from Note
```

## String Literals

```us
Say "Hello World".                     Note, plain text
Let message be text "Hi there".
```

## Numbers

```us
Let x be number 42.                    Note, integer
Let y be number 3.14.                  Note, decimal
Let z be number 0.                     Note, zero
```

## REPL Commands

```bash
us.exe              Note, enter interactive mode
> Let x be number 5.
> Say x.
5
> exit              Note, quit REPL
```

## File Execution

```bash
us.exe program.us   Note, run .us file
```

## Common Patterns

### Print Multiple Values

```us
Say "Name".
Say "Alice".
Say "Age".
Say 25.
```

### Loop with Output

```us
Let i be number 1.
Repeat while i is less than 4.
Say i.
Increase i by 1.
End repeat.
Note, Output: 1 2 3
```

### Conditional Function

```us
Create function check with value.
If value is greater than 0.
Say "Positive".
Otherwise.
Say "Not positive".
End if.
End function.

Use function check with 5.
```

### Calculate with Function

```us
Create function sum with a, b.
Let result be number a plus b.
Say result.
End function.

Use function sum with 10, 20.
Note, Output: 30
```

## Troubleshooting

**Missing period?**
```us
Let x be number 5     Note, ERROR - needs period
Let x be number 5.    Note, OK
```

**Using symbols?**
```us
Let sum = a + b       Note, ERROR - no symbols
Let sum be number a plus b.   Note, OK
```

**Wrong end keyword?**
```us
Create function test.
End test.             Note, ERROR - should be "End function"
End function.         Note, OK
```

**Using symbols in comparison?**
```us
If x > 5.             Note, ERROR
If x is greater than 5.   Note, OK
```

---

**Quick Tip:** Read code like English sentences!

```us
"Let name be text 'Alice'."
"If age is greater than 18, say adult, otherwise say minor."
"Repeat while count is less than 10."
```

For more details, see LANGUAGE_SPEC.md or GUIDE.md
