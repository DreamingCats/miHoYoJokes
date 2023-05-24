echo Before start,please check your version in setup.py
pause

python setup.py develop
python setup.py sdist
twine upload dist/*

pause