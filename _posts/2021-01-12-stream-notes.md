# 1/12/2021 stream notes

## Plan for the morning
- Start on game itself!
    - Get a React/Reagent frontend going
        - Get a helloworld React example up: DONE 👍
    - Set up a websocket server
        - Get the frontend CSRF piece figured out - DONE, more or less 😅
        - finish the backend setup - DONE, after a fashion 😅
        - send a custom message from the FE to the BE
            - what are we sending? a simple string, some fun hello world thing
        - send a custom message to the FE from the BE
    - Connect React clients to websocket server
    - Send some simple messages/data back and forth

## Do I understand web sockets? Let's find out
- Important concepts
    - EVENT: something that has happened either on the client or the server
    - ID: This denotes which "client" (i.e. user) is sending or receiving an update
    - web socket conenctions may not succeed or may drop over time
    - it's possible for the client to have state as well as the server
    - callback functions available to execute after sending an event from client to server
