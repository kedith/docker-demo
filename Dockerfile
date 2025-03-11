# Take a public alpine image to start from
FROM alpine:3.20.3

# Create non-root user
RUN addgroup --gid 1000 bob &&\
    adduser --ingroup bob --disabled-password --uid 1000 bob

# Set default value for the environment variable NAME (value should be docker)


# Copy the hello.sh script


# Allow non-root user to access and execute the script (make bob the owner of the file & assign execute permission on the file)


# Set the user to be bob


# Set the main command of the image to the hello script
ENTRYPOINT ["/hello.sh"]

# Set the default command with which the entrypoint from above should run
# By default '/hello.sh echo "Using default command"' will be executed when the container is started
CMD ["echo","Using default command"]