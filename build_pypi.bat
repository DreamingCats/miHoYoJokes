echo Before start,please check your version in setup.py
pause

echo pip install...
pip3 install setuptools
pip3 install wheel
pip install twine
pause

python setup.py develop
python setup.py sdist
twine upload dist/*

pause