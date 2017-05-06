#!/usr/bin/env python3

from glob import glob
import sys, os, filecmp

def attemp_link(src, dst):
  print(src, dst)

  are_same = False
  if os.path.exists(dst):
    if os.path.isfile(dst):
      are_same = filecmp.cmp(src, dst)
    elif os.path.isdir(dst):
      are_same = filecmp.dircmp(src, dst)


  if are_same:
    print("Already linked")
  elif not os.path.exists(dst):
    print("Linking")
    os.symlink(src, dst)
  else:
    ans = input("'{}' already exists, overwrite? [y/n] ".format(dst))
    if ans == 'y':
      os.remove(dst)
      os.symlink(src, dst)


def main():
  HOME = os.environ['HOME']
  for f in glob("{}/*".format(os.getcwd())):
    if f.split("/")[-1] in ["config", "install.py"]:
      continue

    src = f
    dst = "{}/.{}".format(HOME, f.split("/")[-1])

    attemp_link(src, dst)


  CONFIG = "{}/.config".format(HOME)
  if not os.path.exists(CONFIG):
    ans = input("'{}' does not exists, make it? [y/n] ".format(dst))
    if ans == 'y':
      os.mkdir(CONFIG)

  if os.path.exists(CONFIG):
    for f in glob("{}/config/*".format(os.getcwd())):
      src = f
      dst = "{}/{}".format(CONFIG, f.split("/")[-1])

      attemp_link(src, dst)

if __name__ == '__main__':
  main()
