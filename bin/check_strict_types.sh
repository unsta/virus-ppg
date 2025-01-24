#!/bin/bash

echo "Checking files for strict types declaration..."

FILES_WITHOUT_STRICT_TYPES_ENABLED=$(grep -riL --include=*.php "declare(strict_types=1);" app/ tests/)

if [ -n "${FILES_WITHOUT_STRICT_TYPES_ENABLED}" ]; then
  echo "Found files with missing strict type declaration:"
  echo ${FILES_WITHOUT_STRICT_TYPES_ENABLED} | tr " " "\n"
  exit 1
else
  echo "All files look good. :-)"
fi
