# Growth Engine - New Infrastructure

## Overview
The Growth Engine provides comprehensive business growth analysis, strategic insights, and expansion recommendations using Google's Vertex AI with Gemini 2.5 Pro to deliver actionable growth strategies.

## Architecture
- **Framework**: FastAPI with Uvicorn/Gunicorn
- **AI Model**: Google Gemini 2.5 Pro (Vertex AI)
- **Databases**: PostgreSQL (Multi-database integration)
- **Storage**: Azure Blob Storage (unified-clients-prod)
- **Deployment**: Azure App Service (Python 3.11)

## Live Deployment
- **Production URL**: https://backable-new-growth-engine.azurewebsites.net
- **Resource Group**: BACKABLE-AI-NEW-INFRASTRUCTURE

## Key Features
- Business growth and expansion analysis
- Strategic scaling recommendations
- Market opportunity identification
- Multi-database data synthesis
- 10 Gemini API keys for high availability
- 3600-second timeout for complex analysis
- Professional report generation
- Automatic indexing and notification system
- Word document chunking and processing
- Question-response analytics
- Behavioral analytics

## Deployment
The application uses GitHub Actions for automatic deployment:

- **Workflow**: `.github/workflows/azure-deploy.yml`
- **Trigger**: Push to main branch or manual dispatch
- **Method**: Azure Web Apps Deploy action with publish profile

### Environment Variables (Set in Azure)
- `GEMINI_API_KEY_01` through `GEMINI_API_KEY_10` - Gemini API keys
- `GOOGLE_APPLICATION_CREDENTIALS_JSON` - Vertex AI service account credentials
- `AZURE_STORAGE_CONNECTION_STRING` - Azure Storage connection string
- `SCM_DO_BUILD_DURING_DEPLOYMENT=true`
- `PYTHON_VERSION=3.11`

## Infrastructure
- **Resource Group**: BACKABLE-AI-NEW-INFRASTRUCTURE
- **App Service Plan**: backable-engines-plan
- **Region**: Australia East
- **Database**: BACKABLE-GOOGLE-RAG
- **Storage Account**: backableunifiedstoragev1

## Development
```bash
# Install dependencies
pip install -r requirements.txt

# Run locally
python -m uvicorn BACKABLE_NEW_INFRASTRUCTURE_THE_GROWTH_ENGINE:app --host 0.0.0.0 --port 8000
```

## Repository Structure
- `BACKABLE_NEW_INFRASTRUCTURE_THE_GROWTH_ENGINE.py` - Main FastAPI application
- `app.py` - Application wrapper for gunicorn
- `requirements.txt` - Python dependencies
- `startup.sh` - Startup script for Azure App Service
- `.github/workflows/azure-deploy.yml` - GitHub Actions deployment workflow
- `.gitignore` - Git ignore configuration

## Startup Configuration
```bash
gunicorn -w 4 -k uvicorn.workers.UvicornWorker BACKABLE_NEW_INFRASTRUCTURE_THE_GROWTH_ENGINE:app --bind 0.0.0.0:8000 --timeout 3600 --access-logfile '-' --error-logfile '-' --log-level info
```

## Features Enabled
- **Multi-Database Intelligence**: Comprehensive data synthesis across multiple PostgreSQL databases
- **Behavioral Analytics**: Advanced growth pattern analysis
- **Word Document Chunking**: Intelligent document processing for RAG
- **Question-Response Chunking**: Conversation and Q&A analysis
- **Unified Vertex AI**: Primary AI integration with API keys fallback
- **Blob Retry Decoder**: Advanced blob storage handling
- **AsyncPG Pooling**: High-performance database connections
- **Professional Notifications**: Integrated notification system for stakeholders

## Notes
- Application uses unified blob storage with dynamic folder structure
- Multi-database integration for comprehensive growth analysis
- Professional notifications system integrated
- Automatic document indexing for RAG functionality
- Always-On enabled for consistent availability
- Environment variables used for all sensitive credentials (no hardcoded secrets)
- Vertex AI primary with API keys fallback architecture
