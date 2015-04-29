package Pegex::Pixel::AST;
use parent 'Pegex::Tree';

# $_[1] is our parsed pixel id looking like
# [ $id, $recency_qualifier, $frequency_qualifier ]
# we don't really care about the values of the modifiers, so we discard them
# this could probably be done slightly cleaner in the grammar
sub got_PixelId { $_[1]->[0] }

# we're an include list - all included pixel ids go into the left value of
# our return tuple. the list of excluded ids is empty.
sub got_IncludeExpr { [$_[0]->flatten($_[1], 1), []] }

# we're an exclude list - all excluded pixel ids go into the right value of
# our return tuple. the list of included ids is empty.
sub got_ExcludeExpr { [[], $_[0]->flatten($_[1], 1)] }

# combine and include and an exclude list together by discarding the empty
# portion of each
sub got_IncludeExcludeExpr {
  my ($include, $exclude) = @{ $_[1] };
  [$include->[0], $exclude->[1]];
}

# flatten out the list of received pixel ids within a pixel id list
sub got_PixelAndList {
  my ($self, $pixels) = @_;
  my ($first_pixel, $more_pixels) = @{ $pixels };
  [$first_pixel->[0], map { @$_ } @{ $more_pixels }]
}

1;
