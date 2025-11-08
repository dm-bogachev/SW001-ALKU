from pydantic import BaseModel
from typing import List

class ProcessRequest(BaseModel):
    ProductName: str
    ProductCount: int
    InTareIDs: List[int] = []
    OutTareIDs: List[int] = []
    
class SensorState(BaseModel):
    SensorName: str
    State: bool