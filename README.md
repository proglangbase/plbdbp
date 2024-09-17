# plbdb

proglangbase database service.
Connects to plbweb and responds to requests for data.

### Dependencies

 - **Erlang/OTP** and **BQN** commands must be in PATH.
 - **`dep/plbcom`** submodule must be loaded.

### Commands

*in a POSIX shell you can enter:*

  - **`. a/setenv`**  
    Verifies environment is set correctly and allows the user to install 
    missing dependencies. Updates `PATH` to include installed commands.

  
  - **`a/erlplbdb`**    
    Starts/stops the `plbdb` node and service. Rebuilds service and dependency
    `.beam` files. Like a standard Linux service script, it supports `start`, 
    `stop`, `restart`, and `status` commands.
