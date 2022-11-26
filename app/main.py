from fastapi import FastAPI


app =  FastAPI()

@app.get("/")
async def root():
    # simple route for testing
    return {"Hello": "World"}