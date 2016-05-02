L = 183;
L2 = L +1 +60;
nArtists = 50;

For[fn =1, fn<=nArtists, ++fn,
  out= ReadList[ToString[fn]<>".txt"];
  in=Table[i,{i,1,L}];
  For[i = L + 1, i<=L2, ++i,
    p = Predict[in->out,Method->"NearestNeighbors"] ;
    in = Append[in,i];
    out = Append[out,p[i]];
  ];
  Export[ToString[fn]<>"ret.txt",out];
  Export[ToString[fn]<>".png",ListPlot[out]];
];