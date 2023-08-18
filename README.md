# PDF Q&A with ChatGPT
Ask ChatGPT questions about your PDF, DocX, and Text documents. Based on Streamlit, this application runs locally or in a container. An OpenAI API Key is required.

## How it works
Instead of trying to upload an entire document to ChatGPT for Q&A (which is impossible due to token limits for all but the smallest documents), this application generates a local Vector database using the contents of the document. When a question is asked, this application uses LangChain to retrieve and submit only those snippets most relevant to answer the provided question.

Although only pieces of the document are submitted for question answering, do not upload any documents containing sensitive or confidential material.

## How to use this application
This application can either be run locally as Python 3.10 Streamlit app, or as a Docker container:

#### Local Execution
To use this application locally, you will need Python 3.10 installed:
- A Python virtual environment is highly recommended, and can be created by running `python -m venv venv`
- Activate the virtual environment with `source venv/bin/activate` on MacOS or Linux, or `venv\scripts\activate` on Windows
- Install the requirements with	`python -m pip install --upgrade pip && pip install -r requirements.txt`
- Run the app with `python -m streamlit run main.py`, which will be accessible via `http://localhost:8501/`

#### Container Build
This application is also available as a Docker container. With Docker Desktop running:
- Build the container with the provided Dockerfile using `docker build . -t doc_qa:latest`
- Run the container with `docker run -p 8501:8501 doc_qa:latest` and access it via `http://localhost:8501/`

## Acknowledgements
All of credit goes to [mmz_01](https://twitter.com/mm_sasmitha) for the initial version of this application.