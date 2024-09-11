# plbdb

ProgLangBase Database Service. Connects to PLB Web service and responds to
requests for data model.

*in a POSIX shell you can enter:*

### `code/erlang/plbdb_ctl`  
  
  - Used to start/stop the `plbdb` service. Builds any required out-of-date Erlang 
    modules in the current folder and executes a command. Like a standard Linux 
    service script, it supports `start`, `stop`, `restart`, and `status` commands.  
    `start_perl` will start the Perl version of the web page generator.

  - Requires Erlang/OTP commands are found in PATH.
  - `. ./setenv` will install Erlang/OTP, BQN, and `plbcom` locally, if necessary,
    and modify PATH accordingly.
     
