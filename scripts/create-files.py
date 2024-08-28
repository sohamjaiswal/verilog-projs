import os
import re
import stat

def is_valid_directory_name(name: str) -> bool:
    # A regex to match invalid directory names
    # The name cannot contain the following characters: \ / : * ? " < > |
    return not bool(re.search(r'[\\/:*?"<>|]', name))

def create_directory_with_files(directory_name: str):
    if not is_valid_directory_name(directory_name):
        print(f"'{directory_name}' is not a valid directory name.")
        return
    
    try:
        os.makedirs(directory_name, exist_ok=True)
        print(f"Directory '{directory_name}' created successfully.")
        
        # Define the file paths
        design_file = os.path.join(directory_name, "design.sv")
        testbench_file = os.path.join(directory_name, "testbench.sv")
        run_script = os.path.join(directory_name, "run.sh")
        
        # Create the design.sv file
        open(design_file, 'w').close()
        
        # Create the testbench.sv file and write the specified lines to it
        with open(testbench_file, 'w') as tb_file:
            tb_file.write('`include "./design.sv"\n')
            tb_file.write('`timescale 1ns/1ns\n')
        
        # Create the run.sh file with sample commands
        with open(run_script, 'w') as script_file:
            script_file.write("#!/bin/bash\n")
            script_file.write("echo 'Running simulation...'\n")
            script_file.write(
"""iverilog -o ./dump.vvp ./testbench.sv && \\
vvp ./dump.vvp && \\
gtkwave ./dump.vcd \n""")
            script_file.write("echo 'Compiled and simulated the design and testbench.'\n")
        
        # Make the run.sh file executable
        os.chmod(run_script, os.stat(run_script).st_mode | stat.S_IEXEC)
        
        print(f"Files 'design.sv', 'testbench.sv', and 'run.sh' created in '{directory_name}'.")
        print(f"'run.sh' has been made executable.")

    except OSError as e:
        print(f"An error occurred while creating the directory or files: {e}")

if __name__ == "__main__":
    directory_name = input("Enter a directory name: ")
    create_directory_with_files(directory_name)
