# PDF Q&A with ChatGPT
Ask ChatGPT questions about your own PDF documents with this easy-to-use web application! Based on Gradio, this application runs in your web browser. An OpenAI API Key is required.

## How it works
Instead of trying to upload an entire document to ChatGPT for Q&A (which is impossible due to token limits for all but the smallest documents), this application generates a local Vector database using the contents of the document. When a question is asked, this application uses LangChain to retrieve and submit only those snippets most relevant to answer the provided question.

Although only pieces of the document are submitted for question answering, do not upload any documents containing sensitive or confidential material.

## How to use this application
This application can either be run locally as Python 3.10 Gradio app, or as a Docker container:

#### Local Execution
To use this application locally, you will need Python 3.10 installed; newer versions are not supported. Windows users will require the most current C++ Build Tools:
- A Python virtual environment is highly recommended, and can be created by running `python -m venv .`
- Install the requirements with	`python -m pip install --upgrade pip && pip install -r requirements.txt`
- Run the app with `gradio app.py`, which will be accessible via `http://localhost:7860/`

#### Container Build
If you do not have a local Python environment, or simply prefer to run it as a container, you can build this application as a Docker container. Docker Desktop is required and must be running:
- Build the container with the provided Dockerfile using `docker build . -t doc_qa:latest`
- Run the container with `docker run -p 7860:7860 doc_qa:latest` and access it via `http://localhost:7860/`