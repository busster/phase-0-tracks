## SOME LINUX DESIGN PHILOSOPHIES

### Make every program a filter
- each command/ program takes some input, usually standard input, modifys it and then sends the resulting data stream as some standard output. 

### Small is beautiful
- smaller programs are more ideal than larger

### Each program does one thing well
- Each program does one thing, not a whole bunch
- this generally makes faster programs

### Portability over efficiency/ Use shell scripts to increase portability
- This allows for your programs to run on many otherwise incompatible systems


## VIRTUAL PRIVATE SERVER

- a VPS is a virtual machine that you can purchase from some hosting service. 
- It runs its own instance of an OS and users can install software onto that OS.

-----------------------------------------------------------------------------

- a VPS can be useful because if you mess something up you can just destroy the virtual machine and create a new one in no time.
- you also get super user access so it is easier to install the necessary packages you need.
- it is cost effective for smaller websites

-----------------------------------------------------------------------------

### Root access and security
- allowing applications to run as root nulls a lot of your machines security. This would allow any application to modify your system with no effort or allow hackers to gain access to a ROOT shell. This would not be good as it could potentially destroy important information or give unauthorized people access to that information. So it is better practice to make your programs run on a user level and only use ROOT for administative tasks.