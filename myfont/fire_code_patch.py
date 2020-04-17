import os
import sys
import argparse
from glob import glob
from itertools import chain

import fontforge

ADDITIONAL_LIGATURES = [
    'x.multiply',
    'colon.uc',
    'plus.lc',
    'plus.tosf2',
]

def run(fontpath, outpath, starting_point=0xe100):
    try:
        font = fontforge.open(fontpath)
        ligatures = list(filter(lambda x: x.glyphname.endswith('.liga'),
                                font.glyphs()))
        for i, glyph in enumerate(ligatures):
            point = starting_point + i
            name = glyph.glyphname
            newchar = font.createChar(point, name + '.private')
            newchar.addReference(name)
            # Other option is to use alternative unicode encoding
            # fontforge recommends to use references
            # glygh.altuni = (point, -1, 0)
        font.generate(outpath)
    finally:
        font.close()

def main(argv):
    parser = argparse.ArgumentParser()
    parser.add_argument('--output-dir', '-o', type=str)
    parser.add_argument('fonts', nargs='+',
                        help='font files to process')
    argvals = parser.parse_args(argv)

    output = argvals.output_dir
    fonts = argvals.fonts

    os.makedirs(output, exist_ok=True)

    for f in chain.from_iterable(map(glob, fonts)):
        run(f, os.path.join(output, os.path.basename(f)))

if __name__ == '__main__':
    main(sys.argv[1:])