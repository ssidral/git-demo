#use for image 
FROM ubuntu:latest
 
#installing neccessary tools and lib
RUN apt -y update && apt -y install build-essential

#copy source code
COPY hello.cpp /app/hello.cpp

#set working directory inside container
WORKDIR /app
#RUN echo "gcc version $(gcc --version)"
RUN echo "g++ version $(g++ --verison)"

#compile the c++ program
RUN g++ -o hello hello.cpp

#seting the default command to run when the container starts
CMD ["./hello"]


