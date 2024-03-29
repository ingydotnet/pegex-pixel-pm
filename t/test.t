use Test::More;
use Pegex::Pixel;

for (<DATA>) {
    chomp;
    Pegex::Pixel->parse($_);
    pass "$_";
}

done_testing;

__DATA__
([12345])
( [12345] )
([1] AND [2])
NOT ([3])
NOT ([666] OR [777] OR [888])
([1]) AND NOT ([3])
( [1] OR [2] ) AND NOT ( [3] OR [4] )
( [1] AND [2] ) AND NOT ( [3] AND [4] )
( [1] OR [2] )
( [1] AND [2] )
NOT ( [1] OR [2] )
NOT ( [1] AND [2] )
( [1] OR [2] OR [3] )
( [1] AND [2] AND [3] )
( [100030] AND [100444] AND [100044] AND [100045] AND [100043] AND [100046] AND [100020] AND [100025] AND [100024] AND [100023] AND [100047] AND [100028] AND [100027] AND [100018] AND [100387] AND [100388] AND [100029] AND [100031] AND [100033] AND [100034] AND [100036] AND [100035] AND [100019] AND [100037] AND [100038] AND [100039] AND [100040] AND [100041] AND [100026] AND [100021] AND [100022] )
NOT ( [100030] AND [100444] AND [100044] AND [100045] AND [100043] AND [100046] AND [100020] AND [100025] AND [100024] AND [100023] AND [100047] AND [100028] AND [100027] AND [100018] AND [100387] AND [100388] AND [100029] AND [100031] AND [100033] AND [100034] AND [100036] AND [100035] AND [100019] AND [100037] AND [100038] AND [100039] AND [100040] AND [100041] AND [100026] AND [100021] AND [100022] )
( [100030] AND [100444] AND [100044] AND [100045] AND [100043] AND [100046] AND [100020] AND [100025] AND [100024] AND [100023] AND [100047] AND [100028] AND [100027] AND [100018] AND [100387] AND [100388] AND [100029] AND [100031] AND [100033] AND [100034] AND [100036] AND [100035] AND [100019] AND [100037] AND [100038] AND [100039] AND [100040] AND [100041] AND [100026] AND [100021] AND [100022] ) AND NOT ( [100030] )
( [100030] AND [100444] AND [100044] AND [100045] AND [100043] AND [100046] AND [100020] AND [100025] AND [100024] AND [100023] AND [100047] AND [100028] AND [100027] AND [100018] AND [100387] AND [100388] AND [100029] AND [100031] AND [100033] AND [100034] AND [100036] AND [100035] AND [100019] AND [100037] AND [100038] AND [100039] AND [100040] AND [100041] AND [100026] AND [100021] AND [100022] ) AND NOT ( [100030] AND [100444] AND [100044] AND [100045] AND [100043] AND [100046] AND [100020] AND [100025] AND [100024] AND [100023] AND [100047] AND [100028] AND [100027] AND [100018] AND [100387] AND [100388] AND [100029] AND [100031] AND [100033] AND [100034] AND [100036] AND [100035] AND [100019] AND [100037] AND [100038] AND [100039] AND [100040] AND [100041] AND [100026] AND [100021] AND [100022] )
([1@30m])
([1#3])
([1@30m#3])
([1 @30m])
([1 #3])
([1 @30m #3])
( [1@10m] OR [2#2] OR [11 @600m #3] ) AND NOT ( [3] OR [4#4] OR [11 @15m] )
( [1@10m] AND [2#2] AND [11 @600m #3] ) AND NOT ( [3] AND [4#4] AND [11 @15m] )
