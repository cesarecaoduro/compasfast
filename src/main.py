import fastapi as _fastapi
import starlette.responses as _responses
from compas.geometry import Point, Frame

import uvicorn

app = _fastapi.FastAPI()

@app.get("/")
async def root():
    return _responses.RedirectResponse("/redoc")

@app.get("/point")
async def getPoint():
    point = Point(0, 0, 0)
    return {"message": "Point: {}".format(point.to_jsonstring())}

@app.get("/frame")
async def getFrame():
    point = frame = Frame.worldXY()
    return {"message": "Frame: {}".format(frame.to_jsonstring())}    