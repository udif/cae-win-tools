# Build environment for Win32 CAE* programs
\*(Computer Aided Engineering - typically referring to electronics CAD software)  

## Requirements:
- [x] Docker

## Usage:

Note: **On the first build** , a base containers with all the linux tools and libraries will be created.
On further invocations, the docker image will be reused.

`build clean` - **Warning!** This will remove all your local Docker containers, if any. Docker images will be left as-is.  
`build iverilog` - Build the icarus verilog simulator.  
`build yosys` - Build the yosys synthesis tools.  
`build arachne` - Build the arachne place & route tool for the ice40HX family, *plus* the required icstorm tools.  

After running the `build` script, You can find the output in the `zip` subdirectory as a compressed ZIP file.
All ZIP files are tagged by the 7 first digits of the git commit used to build the specific tool.

## TODO:
- Add more tools over the time
- Allow am optional git commit ID parameter to select which version to compile
- Add a bash-based build.sh alongside build.cmd 
