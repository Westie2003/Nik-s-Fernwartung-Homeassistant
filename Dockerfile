# Use the official Home Assistant base image
FROM homeassistant/armv7-addon

# Copy the main.py script into the container
COPY main.py /usr/src/app/

# Set the entrypoint for the add-on
ENTRYPOINT [ "python3", "/usr/src/app/main.py" ]
