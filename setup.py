from cx_Freeze import setup, Executable

setup(
    name = "SrapeIn4memberLinkedIn",
    version = "1.0",
    description = "A simple app",
    executables = [Executable("loginHandle.py")]
)
