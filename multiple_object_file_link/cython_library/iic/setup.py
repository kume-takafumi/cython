from distutils.core import setup, Extension
from numpy import get_include
from Cython.Distutils import build_ext
from setuptools import setup, Extension
from Cython.Build import cythonize

mode = 1
if mode == 1:
	setup(
		name = 'cython_iic',
		cmdclass = {'build_ext': build_ext},
		ext_modules = cythonize([
			Extension(
				"cython_iic",
				sources = [".\\cython_iic.pyx",".\\iic.c"],
				include_dirs = ['.\\', get_include()], 
				language="c++"
			),
		])
	)
