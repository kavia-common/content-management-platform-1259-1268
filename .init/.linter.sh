#!/bin/bash
cd /tmp/kavia/workspace/code-generation/content-management-platform-1259-1268/blog_frontend_web
npm run lint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

