FROM python

# execute the following command at the time of building the image
RUN pip install flask

# set the current working directory
WORKDIR /src

# copy the program file
# here second parameter (.) represents the working directory (/src)
# copy everything from current directory of local machine to /src of image
COPY . .

# expose the port 4000 as the flask server will listen on port 4000
EXPOSE 7000

