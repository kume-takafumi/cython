from distutils.core import setup, Extension
from Cython.Distutils import build_ext
from numpy import get_include
from setuptools import setup, Extension
from Cython.Build import cythonize

mode = 1
if mode == 1:
	setup(
		name = 'cython_library',
		cmdclass = {'build_ext': build_ext},
		ext_modules = cythonize([
			Extension(
				"cython_library",
				sources = [".\\cython_library.pyx"],
				include_dirs = ['.\\', get_include()], 
				language="c++"
			),
		])
	)
