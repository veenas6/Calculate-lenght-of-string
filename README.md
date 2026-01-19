# 📏 X86/64 Assembly Program – String Length Calculator

## 📌 Project Title

**X86/64 ALP to Accept a String and Display Its Length**

---

## 📝 Overview

This project implements an **Assembly Language Program (ALP)** using **X86/64 architecture** to accept a string from the user and display its **length**.
The program uses **Linux system calls** and demonstrates string handling, macros, and hexadecimal conversion logic.

---

## 🎯 Aim

To write an X86/64 Assembly Language Program that:

* Accepts a **string input** from the user
* Calculates the **length of the string**
* Displays the length on the screen

---

## ⚙️ Features

✔ Uses **macros** for input and output operations
✔ Demonstrates **string processing** in assembly
✔ Calculates string length using system call return value
✔ Displays the length in **hexadecimal format**
✔ Suitable for **academic lab assignments**

---

## 🧠 Program Logic

1. Display a prompt asking the user to enter a string
2. Accept the string using the `read` system call
3. Adjust the returned byte count to remove newline character
4. Store the string length
5. Convert the length into hexadecimal
6. Display the calculated length
7. Exit the program

---

## 🛠️ Macros Used

### `disp`

Used to display messages on the screen using the `write` system call.

### `acceptstr`

Used to accept a string from the user using the `read` system call.

---

## 🧾 Registers Used

* **EAX** – System call number / return value
* **EBX** – File descriptor / data register
* **ECX** – Buffer address
* **EDX** – Data length
* **BL** – Holds string length
* **EDI** – Display buffer pointer

---

## 🔢 Output Format

The string length is displayed as a **2-digit hexadecimal number**.

---

## 📤 Sample Output

```
Enter the string
HelloWorld

Length of the string
0A
```

---

## 🧪 How to Assemble & Run

```bash
nasm -f elf program.asm
ld -m elf_i386 program.o -o program
./program
```

---

## ✅ Conclusion

This program successfully demonstrates **string input handling**, **length calculation**, and **hexadecimal display logic** using **X86/64 Assembly Language**. It strengthens understanding of low-level string operations, macros, and Linux system calls.

---

⭐ *If you find this project useful, don’t forget to star the repository!*
