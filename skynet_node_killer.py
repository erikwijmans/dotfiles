import shlex
import subprocess
import argparse

skynet_nodes = [
    'walle', 't1000', 'gideon', 'jill', 'hal', 'vicki', 'smith', 'bender',
    'tars', 'jarvis', 'breq', 'ash', 'eva', 'c3po', 'johnny5'
]


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('-u', dest='user_name', default='ewijmans3')
    args = parser.parse_args()

    for node in skynet_nodes:
        subprocess.call(
            shlex.split(
                'ssh {UNAME}@{NODE}.cc.gatech.edu "pkill -u {UNAME} node"'.
                format(UNAME=args.user_name, NODE=node)
            )
        )


if __name__ == "__main__":
    main()
