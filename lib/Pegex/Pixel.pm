package Pegex::Pixel;
use Pegex::Parser;
use Pegex::Pixel::Grammar;
use Pegex::Pixel::AST;

sub parse {
    my ($class, $pixel) = @_;
    my $parser = Pegex::Parser->new(
        grammar => Pegex::Pixel::Grammar->new,
        receiver => Pegex::Pixel::AST->new,
        # debug => 1,
    );
    my $ast = $parser->parse($pixel);
    return $ast;
}

1;
