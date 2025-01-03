# aws_deploy
Basic flask app deploying to AWS




- Install python3.11
  ```sh
  sudo add-apt-repository ppa:deadsnakes/ppa
    sudo apt-get update
  sudo apt-get install python3.11
    sudo apt-get install python3.11-dev
  ```
- Install Virtualenv
  ```sh
  sudo apt-get install python3-pip
  sudo apt install python3-virtualenv
  ```


### Follow below setups to setup the application.

- Create the virtual envoirments with python 3.11 version and activate.
    ```sh
    virtualenv --python=python3.11 venv
    source venv/bin/activate
    ```
- Install python dependencies,run into the project root directory.
    ```sh
    pip install -r requirements.txt
  ```
- Run server
  ```sh
  python app.py
  ````