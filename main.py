import argparse
import logging

from utils.log_formatter import setup_logger

def main():
    description = ("An exploration of Asheville's housing data")
    parser = argparse.ArgumentParser(description=description)

    parser.add_argument('--debug',
                        '-d',
                        action='store_true',
                        default=False,
                        help='increase output verbosity for debugging')
    args = parser.parse_args()
    
    logger = logging.getLogger(__name__)
    logger.info('Logger initialized.')


if __name__ == '__main__':
    setup_logger()
    main()