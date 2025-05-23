# 🚀 depglance: Python Dependency Visualizer

![Build Status](https://github.com/devprajeet/depglance/actions/workflows/python-app.yml/badge.svg)
![PyPI](https://img.shields.io/pypi/v/depglance)
![License](https://img.shields.io/github/license/devprajeet/depglance)

---

depglance lets you **visualize Python project dependencies** with a beautiful interactive graph! 🕸️  It also **highlights vulnerabilities** using data from OSV.dev.

---

## ✨ Features

- 📈 Interactive dependency graph
- 🔎 Vulnerability scanner
- 🌍 Serve graph locally in browser
- 📦 Support for `requirements.txt`, `Pipfile`, and `poetry.lock`
- 🛡️ Clean exports (HTML, JSON, CSV)
- 🧪 Fully tested, CI ready

---

## 📥 Installation

```bash
git clone https://github.com/devprajeet/depglance.git
cd depglance
python3 -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
pip install -r requirements.txt
```

---

## 🚀 Quick Start

```bash
python -m depglance.cli path/to/your/requirements.txt --serve
```

Example:
```bash
python -m depglance.cli examples/requirements.txt --serve
```

- Dependency graph will open automatically in your browser!
- Vulnerabilities saved to `vulnerabilities.json` and `vulnerabilities.csv`

---

## 🧪 Running Tests

```bash
python -m unittest discover tests
```

---

## 🛠️ Makefile Commands

```bash
make install   # Install dependencies
make run       # Run depglance
make test      # Run all tests
```

---

## 📦 Publishing to PyPI

```bash
python setup.py sdist bdist_wheel
pip install twine
twine upload dist/*
```

---

## 🤝 Contributing

We love contributions! 🛠️ Please read our [CONTRIBUTING.md](CONTRIBUTING.md) before submitting a PR.

- Bug Reports ➡️ [Bug template](.github/ISSUE_TEMPLATE/bug_report.md)
- Feature Requests ➡️ [Feature template](.github/ISSUE_TEMPLATE/feature_request.md)

Also see: [Code of Conduct](CODE_OF_CONDUCT.md)

---

## 📄 License

This project is licensed under the **MIT License**. See [LICENSE](LICENSE) for details.

---

## ⭐ Final Touch

If you like this project, **give it a star ⭐** — it helps a lot!

Happy coding with depglance! 🎉

---

# 🌐 docs/index.html

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>depglance - Dependency Visualizer</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container text-center mt-5">
        <h1>🚀 depglance</h1>
        <p class="lead">Visualize your Python project dependencies beautifully with vulnerability insights!</p>
        <a href="https://github.com/devprajeet/depglance" class="btn btn-primary btn-lg">GitHub Repo</a>
        <hr>
        <p>Licensed under MIT | Made with ❤️ by the Community</p>
    </div>
</body>
</html>
```

---

# 📦 pyproject.toml (Modern Packaging)

```toml
[build-system]
requires = [
    "setuptools>=61.0",
    "wheel"
]
build-backend = "setuptools.build_meta"

[project]
name = "depglance"
version = "0.1.0"
description = "Python Dependency Visualizer with Vulnerability Insights"
readme = "README.md"
requires-python = ">=3.7"
authors = [
    { name="Prajeet Sinhg", email="dev.prajeet2016@gmail.com" }
]
license = { text = "MIT" }
dependencies = [
    "requests",
    "pyvis",
    "toml"
]

[project.urls]
"Homepage" = "https://github.com/devprajeet/depglance"
"Source" = "https://github.com/devprajeet/depglance"
"Tracker" = "https://github.com/devprajeet/depglance/issues"
```

---


# 📝 setup.cfg (Optional modern setup file)

```ini
[metadata]
name = depglance
version = 0.1.0
author = Prajeet Singh
author_email = dev.prajeet2016@gmail.com
description = Python Dependency Visualizer with Vulnerability Insights
long_description = file: README.md
long_description_content_type = text/markdown
url = https://github.com/devprajeet/depglance
license = MIT
classifiers =
    Programming Language :: Python :: 3
    License :: OSI Approved :: MIT License
    Operating System :: OS Independent

[options]
package_dir =
    = src
packages = find:
python_requires = >=3.7
install_requires =
    requests
    pyvis
    toml

[options.packages.find]
where = src
```

---