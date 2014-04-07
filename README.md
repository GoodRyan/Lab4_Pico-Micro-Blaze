Lab4_Pico-Micro-Blaze
=====================

Introduction
============

The purpose of this lab was to instantiate a pico blaze slice and a micro blaze slice on the FPGA. The purpose of this was to allow for programming in higher level languages. For example, instantiating the pico blaze allowed for programming in assembly, and instantiating the micro blaze allowed for programming in C. Doing this will allow for simpler programming of more complex functionalities on the the final project.

Implementation
==============

The requirement for both the pico blaze slice and the micro blaze slice was to create a program that allowed the user to properly use the led and the swt command.

These commands work as follows:

led - when the user types led into the Tera Term console, the system auto spaces and awaits user input. The user can then enter two hex characters they wish to be displayed in binary format on the FPGA LEDs.

swt - when the user types swt into the Tera Term console, the system auto spaces and outputs the two digit hex equivalent of what has been inputted by the user in binary format using the FPGA switches.

Test/Debug
==========

* For the pico blaze, it was difficult generating a clock to baud module that worked properly. In order to find out what was going wrong with my module, I created a testbench to analyze the signal that the module was outputting. This allowed me to realize that my calculations were wrong, and resolve the issue.
* For the micro blaze, most of the issues came from innacuracies in the provided tutorial, once these were resolved the hardware portion was fairly simple. The C code that was used was fairly lengthy, but I did not run into any major issues while developing this code.


Conclusion
==========

  This lab taught me a great deal about debugging, and thinking through problems in hardware instantiation. It also forced me to think in a variety of languages, which further developed my programming abilities. The knowledge I have gained from this lab will be highly useful for completing my final project, as much of the programming will have to be done in C. If i were to change anything in this lab, it would be modifying the tutorial document to accomodate the innacuracies that caused students the majority of their problems.
