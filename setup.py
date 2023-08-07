import codecs
import os
from setuptools import setup, find_packages

# these things are needed for the README.md show on pypi
here = os.path.abspath(os.path.dirname(__file__))

with codecs.open(os.path.join(here, "README.md"), encoding="utf-8") as fh:
    long_description = "\n" + fh.read()


VERSION = '2023.8.7'
DESCRIPTION = '原批笑话'
LONG_DESCRIPTION = '有关原神的经典发言'

# Setting up
setup(
    name="genshitjokes",
    version=VERSION,
    author="DreamngCats",
    author_email="",
    description=DESCRIPTION,
    long_description_content_type="text/markdown",
    long_description=long_description,
    include_package_data=True,
    packages=find_packages(),
    install_requires=[],
    keywords=['python','genshitjokes','genshit_jokes','genshin_impact'],
    classifiers=[
        "Development Status :: 1 - Planning",
        "Intended Audience :: Developers",
        "Programming Language :: Python :: 3",
        "Operating System :: Unix",
        "Operating System :: MacOS :: MacOS X",
        "Operating System :: Microsoft :: Windows",
    ]
)