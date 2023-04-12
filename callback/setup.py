from distutils.core import setup, Extension
from Cython.Build import cythonize
from Cython.Distutils import build_ext
from numpy import get_include

mode = 1
if mode == 1:
	setup(
		name = 'MyProject',
		cmdclass = {'build_ext': build_ext},	
		ext_modules = cythonize([
			Extension(
				"wcymain",
				sources = [".\\wcymain.pyx"], #".\\linking.pyx"
				include_dirs = ['.\\', get_include()], 
				language="c++"
			),
		])
	)