package Pegex::Pixel::Grammar;
use parent 'Pegex::Grammar';

use constant file => 'share/pixel.pgx';

# Recomile with: `perl -Ilib -MPegex::Pixel::Grammar=compile`
sub make_tree {   # Generated/Inlined by Pegex::Grammar (0.60)
  {
    '+grammar' => 'pixel',
    '+toprule' => 'Expression',
    '+version' => '0.0.1',
    'ExcludeExpr' => {
      '.all' => [
        {
          '.rgx' => qr/\G\s*NOT\s*\(\s*/
        },
        {
          '.ref' => 'PixelAndOrList'
        },
        {
          '.rgx' => qr/\G\s*\)\s*/
        }
      ]
    },
    'Expression' => {
      '.any' => [
        {
          '.ref' => 'IncludeExcludeExpr'
        },
        {
          '.ref' => 'IncludeExpr'
        },
        {
          '.ref' => 'ExcludeExpr'
        }
      ]
    },
    'IncludeExcludeExpr' => {
      '.all' => [
        {
          '.ref' => 'IncludeExpr'
        },
        {
          '.rgx' => qr/\G\s*AND\s+/
        },
        {
          '.ref' => 'ExcludeExpr'
        }
      ]
    },
    'IncludeExpr' => {
      '.all' => [
        {
          '.rgx' => qr/\G\s*\(\s*/
        },
        {
          '.ref' => 'PixelAndOrList'
        },
        {
          '.rgx' => qr/\G\s*\)\s*/
        }
      ]
    },
    'MoreAndPixels' => {
      '.all' => [
        {
          '.rgx' => qr/\G\s*AND\s*/
        },
        {
          '.ref' => 'PixelId'
        }
      ]
    },
    'MoreOrPixels' => {
      '.all' => [
        {
          '.rgx' => qr/\G\s*OR\s*/
        },
        {
          '.ref' => 'PixelId'
        }
      ]
    },
    'PixelAndList' => {
      '.all' => [
        {
          '.rgx' => qr/\G\[([0-9]+)\s*(?:\@([0-9]+)m)?\s*(?:\#([0-9]+))?\]\s*/
        },
        {
          '+min' => 1,
          '.ref' => 'MoreAndPixels'
        }
      ]
    },
    'PixelAndOrList' => {
      '.any' => [
        {
          '.ref' => 'PixelAndList'
        },
        {
          '.ref' => 'PixelOrList'
        }
      ]
    },
    'PixelId' => {
      '.rgx' => qr/\G\[([0-9]+)\s*(?:\@([0-9]+)m)?\s*(?:\#([0-9]+))?\]/
    },
    'PixelOrList' => {
      '.all' => [
        {
          '.rgx' => qr/\G\[([0-9]+)\s*(?:\@([0-9]+)m)?\s*(?:\#([0-9]+))?\]\s*/
        },
        {
          '+min' => 0,
          '.ref' => 'MoreOrPixels'
        }
      ]
    }
  }
};

1;
