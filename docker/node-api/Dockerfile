#
FROM jansanchez/nocker-wheezy

# Declare Arguments
ARG USER
ARG GID
ARG UID

RUN yarn global add loopback-cli

# Create a new group account with Args
RUN groupadd --gid $GID $USER \
  && useradd --uid $UID --gid $USER --shell /bin/bash --create-home $USER

#RUN echo "Build number: $USER - $GID - $UID"

# App name
ENV APP_NAME api

ENV USER_PATH /home/$USER/
ENV APP_PATH $USER_PATH$APP_NAME/

# Switch to $USER
USER $USER

# Feed my bash history
RUN echo "cd ${APP_PATH}" >> $USER_PATH.bash_history
RUN echo "ls -la" >> $USER_PATH.bash_history

# Add ps1
ADD ./files/ps1 /tmp/ps1

# If don't want colors then comment the two lines below...
RUN sed -i '1s/^/force_color_prompt=yes \n/' $USER_PATH.bashrc
RUN cat /tmp/ps1 >> $USER_PATH.bashrc

# App Folder
RUN mkdir -p $APP_PATH \
    && chmod -R 775 $APP_PATH

# Set Workdir
WORKDIR $APP_PATH

# Expose default port
EXPOSE 3000

# Exec node
CMD node

# For run a container and start a Bash session use 'bash' or /bin/bash
# i.e. docker run -it --rm image_name bash
