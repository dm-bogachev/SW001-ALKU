from pydantic import BaseModel, Field
from typing import List

class ProcessRequest(BaseModel):
    ProductName: str
    ProductSpec: int = 0
    ProductCount: int
    InTareIDs: List[int] = []
    OutTareIDs: List[int] = []
    Layout: int = Field(default=0, ge=0, le=3)
    GlobalMaxTareCount: int = 0
    CurrentMaxTareCount: int = 0
    UseAlternateWave: bool = False
    
class SensorState(BaseModel):
    SensorName: str
    State: bool