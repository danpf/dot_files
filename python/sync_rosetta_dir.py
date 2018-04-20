#!/usr/bin/env python3.6

import os
import sys
import subprocess
import argparse
import time

def parseargs():
    parser = argparse.ArgumentParser()
    parser.add_argument('-e','--exes', nargs='+', help='all executables to sync', required=True)
    args = parser.parse_args()
    return args




def sync_with_hyak(exe, dist):
    sync_exe = f"rsync -av source/cmake/build_release_static/{exe}.static.linuxgccrelease danpf@hyak:/suppscr/dimaio/danpf/Rosetta/{dist}/source/bin"
    sync_db = f"rsync -av database danpf@hyak:/suppscr/dimaio/danpf/Rosetta/{dist}"
    ret = subprocess.call(sync_exe.split())
    if ret != 0:
        print("Found sync_exe failed please fix your shit")
    ret = subprocess.call(sync_db.split())
    if ret != 0:
        print("Found sync_db failed please fix your shit")

def sync_with_digs(exes, dist):
    # Sync db
    sync_db = f"rsync -av database danpf@digs:/home/danpf/Rosetta/{dist}"
    ret = subprocess.call(sync_db.split())
    if ret != 0:
        print("Found sync_db failed please fix your shit")

    for exe in exes:
        sync_exe = f"rsync -av source/cmake/build_release_static/{exe}.static.linuxgccrelease danpf@digs:/home/danpf/Rosetta/{dist}/source/bin"
        ret = subprocess.call(sync_exe.split())
        if ret != 0:
            print("Found sync_exe failed please fix your shit")

def build_static():
    os.chdir("source/")
    ret = subprocess.call("./ninja_build.py rs", shell=True)
    if ret != 0:
        print("Found that ninja build failed. please fix your shit")
        sys.exit(-1)
    os.chdir("../")

def get_oriented():
    t = time.time()
    args = parseargs()
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
    sync_with_digs(args.exes, dist)
    print(f"total time to sync: {time.time()-t:1.1f} seconds.")
    #sync_with_hyak(exe, dist) # NOT SET UP FOR MULTI

if len(sys.argv) < 2:
    print("require the name of the exe to build and sync")
    sys.exit(-1)

get_oriented()





