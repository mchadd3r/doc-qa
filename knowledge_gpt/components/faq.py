import streamlit as st


def faq():
    st.markdown(
        """
# FAQ
## How does this app work?
When you upload a document, it will be divided into smaller chunks 
and stored in a vector database that allows for semantic search and retrieval.

When you ask a question, this app will search through the
chunks and find the most relevant ones using the vector index.
Then, it will use ChatGPT to generate a final answer.

## Why does it take so long to index my document?
If you are using a free OpenAI API key, it will take a while to index
your document. This is because the free API key has strict [rate limits](https://platform.openai.com/docs/guides/rate-limits/overview).
To speed up the indexing process, you can use a paid API key.

## What do the numbers mean under each source?
For a PDF document, you will see a citation number like this: 3-12. 
The first number is the page number and the second number is 
the chunk number on that page. For DOCS and TXT documents, 
the first number is set to 1 and the second number is the chunk number.
"""
    )
