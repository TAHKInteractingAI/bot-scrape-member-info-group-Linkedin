from flask import Flask, Response
from PySide6 import QtWidgets
from PySide6.QtWebEngineWidgets import QWebEngineView

app = Flask(__name__)
qt_app = QtWidgets.QApplication([])
view = QWebEngineView()

def load_ui():
    # Load your PySide6 UI here
    view.load("C:/Users/thanh/GitClone/Scrape_memIn4_in_LinkedInGroup/src/login.ui")
    # Or, view.setHtml("<html><body><h1>Hello World</h1></body></html>")
    # Wait until the UI is loaded
    view.loadFinished.connect(lambda: None)
    # Get the HTML content of the UI
    html = view.page().toHtml()
    return html

@app.route("/")
def index():
    # Display the UI on the browser
    return Response(load_ui(), mimetype="text/html")

if __name__ == "__main__":
    app.run()
