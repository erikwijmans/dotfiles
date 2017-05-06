#!/usr/bin/env python3

class bcolors:
  HEADER = '\033[95m'
  OKBLUE = '\033[94m'
  OKGREEN = '\033[92m'
  WARNING = '\033[93m'
  FAIL = '\033[91m'
  ENDC = '\033[0m'
  BOLD = '\033[1m'
  UNDERLINE = '\033[4m'

from glob import glob
import sys, os, filecmp

def query_yes_no(question, default="yes"):
  valid = {"yes": True, "y": True, "ye": True,
           "no": False, "n": False}
  if default is None:
    prompt = " [{0}y{2}/{1}n{2}] ".format(bcolors.OKGREEN, bcolors.OKBLUE, bcolors.ENDC)
  elif default == "yes":
    prompt = " [{0}Y{2}/{1}n{2}] ".format(bcolors.OKGREEN, bcolors.OKBLUE, bcolors.ENDC)
  elif default == "no":
    prompt = " [{0}y{2}/{1}N{2}] ".format(bcolors.OKGREEN, bcolors.OKBLUE, bcolors.ENDC)
  else:
    raise ValueError("invalid default answer: '{}'".format(default))

  while True:
    sys.stdout.write(question + prompt)
    choice = input().lower()

    if default is not None and choice == '':
      res = valid[default]
    elif choice in valid:
      res = valid[choice]
    else:
      print("Please respond with 'yes' or 'no' "
            "(or 'y' or 'n')")
      continue

    if res:
      print("{}yes{}".format(bcolors.OKGREEN, bcolors.ENDC))
    else:
      print("{}no{}".format(bcolors.OKBLUE, bcolors.ENDC))

    return res

def attemp_link(src, dst):
  print(src, dst)

  are_same = False
  if os.path.exists(dst):
    if os.path.isfile(dst):
      are_same = filecmp.cmp(src, dst)
    elif os.path.isdir(dst):
      are_same = filecmp.dircmp(src, dst)

  if are_same:
    print("Already exists")
  elif not os.path.exists(dst):
    print("Linking")
    os.symlink(src, dst)
  else:
    if query_yes_no("'{}' already exists, overwrite?".format(dst)):
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
    if query_yes_no("'{}' does not exists, make it?".format(dst)):
      os.mkdir(CONFIG)

  if os.path.exists(CONFIG):
    for f in glob("{}/config/*".format(os.getcwd())):
      src = f
      dst = "{}/{}".format(CONFIG, f.split("/")[-1])

      attemp_link(src, dst)

if __name__ == '__main__':
  main()
