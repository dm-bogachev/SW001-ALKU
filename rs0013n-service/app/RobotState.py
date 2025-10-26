class RobotState:

    def __init__(
        self,
        connected: bool = False,
        power: bool = False,
        teach: bool = False,
        cs: bool = False,
        error: bool = False,
        ecode: int = 0,
        teachl: bool = False,
        tpemg: bool = False,
        opemg: bool = False,
        exemg: bool = False,
        home: bool = False,
        batalm: bool = False,
        action: str = "",
    ):
        self.connected = connected
        self.power = power
        self.teach = teach
        self.cs = cs
        self.error = error
        self.ecode = ecode
        self.teachl = teachl
        self.tpemg = tpemg
        self.opemg = opemg
        self.exemg = exemg
        self.home = home
        self.batalm = batalm
        self.action = action

    def __str__(self):
        return f"RobotState(connected={self.connected}, power={self.power}, teach={self.teach}, cs={self.cs}, error={self.error}, ecode={self.ecode}, teachl={self.teachl}, tpemg={self.tpemg}, opemg={self.opemg}, exemg={self.exemg}, home={self.home}, batalm={self.batalm}, action={self.action})"
