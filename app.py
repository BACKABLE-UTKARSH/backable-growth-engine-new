# Azure Web App entry point - imports the main application
from BACKABLE_NEW_INFRASTRUCTURE_THE_GROWTH_ENGINE import app

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)
