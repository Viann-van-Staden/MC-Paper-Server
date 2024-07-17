Hello there

Welcome to my little Dockerised Paper MC server.

Just a guide on how to use it in its current state.

1. Pull the current version of the repo.
2. in your terminal of choice run "docker build --tag [yourbuildname] ."
3. After letting the image build, run "docker run -p [yourport]:25565 -it [yourbuildname]"
4. it should start to run. note at this point if your did all this inside docker desktop your logs will be empty,
   DONT WORRY.
5. In your terminal run "docker exec -it [yourcontainerID] /bin/bash
6. You should now have a bash inside the container, the server is running screen to allow you to reattach to the MC console.
7. run "screen -r minecraft" and tada!!!
8. You now have your own MC Paper Server.

Please note this repo is for education and learning. I am not an expert so if there are errors, give me a shout and ill try my best to fix them.

Thank you and hope you guys enjoy!
