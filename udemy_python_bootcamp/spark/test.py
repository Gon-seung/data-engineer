import os
import sys

os.environ['PYSPARK_PYTHON'] = sys.executable
os.environ['PYSPARK_DRIVER_PYTHON'] = sys.executable

from pyspark.context import SparkContext
sc = SparkContext('local', 'test')

nums = sc.parallelize([1,2,3,4])
nums.map(lambda x: x*x).collect()
