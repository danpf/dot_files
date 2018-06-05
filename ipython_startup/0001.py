import numpy as np
import subprocess
import glob
import os
import pathlib
import sys

from subprocess import Popen, PIPE, check_output


def s_ci():
    p = Popen(['xclip','-selection','clipboard','-t', 'TARGETS', '-o'], stdin=PIPE, stdout=subprocess.PIPE)
    ret=p.wait()
    foundimg = False
    imageline = ""
    for line in p.stdout:
        line = line.decode('utf-8').strip()
        if 'image/jpg' in line:
            foundimg = True
            imageline = 'image/jpg'
        if 'image/jpeg' in line:
            foundimg = True
            imageline = 'image/jpeg'
    if foundimg:
        pathlib.Path('.images').mkdir(exist_ok=True)
        prev = glob.glob(".images/*.jpg")
        if len(prev) == 0:
            p = Popen(['xclip','-selection','clipboard','-t', imageline, '-o'], stdout=open('.images/0001.jpg','w'))
            ret = p.wait()
            print("wrote clipboard to .images/0001.jpg")
            print("![alt text](.images/0001.jpg)")
        else:
            prev_imgs = [int(x.split('/')[-1].split('.')[0]) for x in prev if x.split('/')[-1].split('.')[0].isdigit() and len(x.split('/')[-1].split('.')[0]) == 4]
            if len(prev_imgs) != 0:
                prev_max = max(prev_imgs)
                p = Popen(['xclip', '-selection', 'clipboard', '-t', imageline, '-o'], stdout=open(f'.images/{prev_max+1:04}.jpg', 'w'))
                ret = p.wait()
                print(f"wrote clipboard to .images/{prev_max+1:04}.jpg")
                print(f"![alt text](.images/{prev_max+1:04}.jpg)")
    else:
        p = check_output(['xclip', '-selection', 'clipboard', '-o']).decode()
        if os.path.isfile(p):
            pathlib.Path('.images').mkdir(exist_ok=True)
            prev = glob.glob(".images/*.png")
            if len(prev) == 0:
                subprocess.call(["cp", p, ".images/0001.png"])
                print("wrote clipboard to .images/0001.png")
                print("![alt text](.images/0001.png)")
            else:
                prev_imgs = [int(x.split('/')[-1].split('.')[0]) for x in prev if x.split('/')[-1].split('.')[0].isdigit() and len(x.split('/')[-1].split('.')[0]) == 4]
                prev_max = max(prev_imgs)
                subprocess.call(["cp", p, f".images/{prev_max+1:04}.png"])
                print(f"wrote clipboard to .images/{prev_max+1:04}.png")
                print(f"![alt text](.images/{prev_max+1:04}.png)")
