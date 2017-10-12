import numpy as np
import subprocess
import glob
import os
import pathlib
import sys

from subprocess import Popen, PIPE
def s_ci():
    p = Popen(['xclip','-selection','clipboard','-t', 'TARGETS', '-o'], stdin=PIPE, stdout=subprocess.PIPE)
    ret=p.wait()
    foundimg = False
    for line in p.stdout:
        line = line.decode('utf-8').strip()
        if 'image/jpg' in line:
            foundimg = True
    if foundimg:
        pathlib.Path('.images').mkdir(exist_ok=True)
        prev = glob.glob(".images/*.jpg")
        if len(prev) == 0:
            p = Popen(['xclip','-selection','clipboard','-t', 'image/jpg', '-o'], stdout=open('.images/0001.jpg','w'))
            ret = p.wait()
            print("wrote clipboard to .images/0001.jpg")
        else:
            prev_imgs = [ int(x.split('/')[-1].split('.')[0]) for x in prev if x.split('/')[-1].split('.')[0].isdigit() and len(x.split('/')[-1].split('.')[0]) == 4 ]
            if len(prev_imgs) != 0:
                prev_max = max(prev_imgs)
                p = Popen(['xclip','-selection','clipboard','-t', 'image/jpg', '-o'], stdout=open(f'.images/{prev_max+1:04}.jpg','w'))
                ret=p.wait()
                print(f"wrote clipboard to .images/{prev_max+1:04}.jpg")
    else:
        print("Found no image in clipboard")
    
