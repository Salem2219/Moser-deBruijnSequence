# Moser-de Bruijn Sequence
Given an integer ‘n’, print the first ‘n’ (up to 14) terms of the Moser-de Bruijn Sequence.

The Moser-de Bruijn sequence is the sequence obtained by adding up the distinct powers of the number 4 (For example 1, 4, 16, 64, etc).

Examples :



Input : 5
Output : 0 1 4 5 16

Input : 10
Output : 0 1 4 5 16 17 20 21 64 65
# FSMD
Basic Finite State Machine with Datapath (FSMD) example to find the nth term in Moser-de Bruijn sequence.

## Install

These examples use [ModelSim&reg; and Quartus&reg; Prime from Intel FPGA](http://fpgasoftware.intel.com/?edition=lite), [GIT](https://git-scm.com/download/win), [Visual Studio Code](https://code.visualstudio.com/download), make sure they are installed locally on your computer before proceeding.

## Usage

1. Grab a copy of this repository to your computer's local folder (i.e. C:\projects):

    ```sh
    $ cd projects
    $ git clone https://github.com/Salem22/Moser-deBruijnSequence.git
    ```
2. Use Visual Studio Code (VSC) to edit and view the design files:

    ```sh
    $ cd Moser-deBruijnSequence
    $ code .
    ```
    Click on the toplevel.vhd file in the left pane to view its contents.
    
3. From the VSC View menu, choose Terminal, in the VCS Terminal, create a "work" library:

    ```sh
    $ vlib work
    ```
    
4. Compile all the design units:

    ```sh
    $ vcom *.vhd
    ```
    
5. Simulate your design. For example, if n = 14, then y = 84:

    ```sh
    $ vsim work.tb
    ```
