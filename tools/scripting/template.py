import argparse
import logging as l


if __name__ == '__main__':

    def main(args):
        pass

    def parseArgs():
        parser = argparse.ArgumentParser(formatter_class=argparse.ArgumentDefaultsHelpFormatter)
        parser.add_argument('-v', '--verbose', help='Verbosity', action='count', dest='verbose', default=0)
        return parser.parse_args()

    def configLogger(nLevel=0):
        if nLevel == 0:
            sLevel = l.WARNING
        elif nLevel == 1:
            sLevel = l.INFO
        else:
            sLevel = l.DEBUG
        l.basicConfig(level=sLevel, format='%(levelname)-9s: %(message)s')

    args = parseArgs()
    configLogger(args.verbose)
    main(args)
