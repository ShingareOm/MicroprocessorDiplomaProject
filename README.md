# Number Search in Array (Assembly Language)

## Overview

![Project Img](https://github.com/user-attachments/assets/78e2eeaa-7f17-47ed-a7bc-ebe60c0e816a)

This project is a simple assembly language program that searches for a user-entered number in a predefined array. The program is written in x86 assembly language and runs on a DOS environment. The purpose is to demonstrate basic input/output operations and array processing in assembly language.

## Author

- [Om Shingare](https://github.com/ShingareOm)

## Features

- Prompts the user to enter a number.
- Searches for the entered number in a predefined array.
- Displays the index of the number if it is found.
- Displays a message indicating the number is not present if it is not found.

## Program Flow

1. **Initialization**: 
   - Set up the data segment and initialize pointers and registers.

2. **User Input**:
   - Prompt the user to enter a number.
   - Read the user's input and store it in the `num` variable.

3. **Search Operation**:
   - Traverse through the predefined array (`myarr`).
   - Compare each element with the user-entered number.
   - If the number is found, jump to the `exit` label to display the index.
   - If the number is not found by the end of the array, jump to the `exitt` label to display a not-found message.

4. **Output**:
   - Display the index of the number if found.
   - Display a message indicating the number is not present if not found.

5. **Exit**:
   - Terminate the program.

## Code Explanation

- **Data Segment**:
  - `myarr`: An array of numbers to be searched.
  - `num`: The number input by the user.
  - `index`: To store the current index during the search.
  - `isfound`: A flag to indicate if the number was found.
  - `enter`, `found`, `notfound`: Strings for user interaction.

- **Code Segment**:
  - Uses `int 21h` for DOS interrupt services to handle input and output.
  - Utilizes loop constructs and conditional jumps to search the array.

## Usage

1. **Compile**:
   - Assemble the code using an assembler such as MASM or TASM.

2. **Run**:
   - Execute the compiled program in a DOS environment or DOS emulator.

3. **Enter a Number**:
   - Follow the on-screen prompts to enter a number between 0 and 9.

4. **View Results**:
   - The program will display whether the number was found and its index or indicate that the number is not present.

## Example

```
Enter the number: 5
number is present in the array at index 4
```

## Notes

- Ensure that you are using a DOS environment or emulator like DOSBox to run this assembly program.
- The code is designed for educational purposes and may require modifications for different environments or more complex use cases.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
