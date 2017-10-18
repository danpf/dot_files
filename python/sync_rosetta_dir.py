#!/usr/bin/env python3.6

import os
import sys
import subprocess

def sync_with_hyak(dist):
	sync_exe = f"rsync -av source/cmake/build_release_static/{sys.argv[1]}.static.linuxgccrelease danpf@hyak:/suppscr/dimaio/danpf/Rosetta/{dist}/source/bin"
	sync_db = f"rsync -av database danpf@hyak:/suppscr/dimaio/danpf/Rosetta/{dist}"
	ret = subprocess.call(sync_exe.split())
	if ret != 0:
		print("Found sync_exe failed please fix your shit")
	ret = subprocess.call(sync_db.split())
	if ret != 0:
		print("Found sync_db failed please fix your shit")

def sync_with_digs():
	print("not done yet")

def build_static():
	os.chdir("source/")
	ret = subprocess.call("./ninja_build.py rs", shell=True)
	if ret != 0:
		print("Found that ninja build failed. please fix your shit")
		sys.exit(-1)
	os.chdir("../")

def get_oriented():
	pwd = os.getcwd()
	pwd_sp = pwd.split('/')
	if pwd_sp.count("/source/"):
		print("found `source` in your pwd more than once...check that?")
		print(os.getcwd())
		sys.exit(-1)
	dist_idx = 0
	try:
		dist_idx = pwd_sp.index("source")
	except ValueError:
		print("Could not find 'source' in your current directory... how do you expect me to find what rosetta dist you want me to send?!")
		sys.exit(-1)
	dist = pwd_sp[dist_idx - 1]
	os.chdir("/".join(pwd_sp[:dist_idx]))
	build_static()
	sync_with_hyak(dist)
	#sync_with_digs()

if len(sys.argv) != 2:
	print("require the name of the exe to build and sync")
	sys.exit(-1)

get_oriented()





