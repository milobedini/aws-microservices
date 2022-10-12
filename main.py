import uvicorn
from fastapi import FastAPI

from mylib.logic import phrase as wiki_phrases
from mylib.logic import search_wiki
from mylib.logic import wiki as wiki_summary

app = FastAPI()


@app.get("/")
async def root():
    return {"message": "Wikipedia API. Call /search/<str> or /summary/<str> or /phrase/<str>"}


@app.get("/search/{value}")
async def search(value: str):
    """Search wikipedia using a term"""
    results = search_wiki(value)
    return {"results": results}


@app.get("/summary/{value}")
async def summary(value: str):
    """Find a wiki summary using a term"""
    result = wiki_summary(value)
    return {"result": result}


@app.get("/phrase/{value}")
async def phrase(value: str):
    """Retrieve wiki page and return phrases"""
    result = wiki_phrases(value)
    return {"result": result}


if __name__ == "__main__":
    uvicorn.run(app, port=8000, host="0.0.0.0")
