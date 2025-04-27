# Clean previous builds
rm -rf dist/ build/ *.egg-info

# Rebuild
python3 -m build

# Upload again
twine upload dist/*
