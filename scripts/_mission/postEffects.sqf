PP_chrom = ppEffectCreate ["ChromAberration",200];
PP_chrom ppEffectEnable true;
PP_chrom ppEffectAdjust [-0.003,0,true];
PP_chrom ppEffectCommit 0;
PP_colorC = ppEffectCreate ["ColorCorrections",1500];
PP_colorC ppEffectEnable true;
PP_colorC ppEffectAdjust [0.95,1.34,-0.14,[0.07,0.39,0.57,0.17],[1.05,2.36,2.56,0.96],[0.21,0.33,-0.05,0.11],[0,0,0,0,0,0,5]];
PP_colorC ppEffectCommit 0;
PP_film = ppEffectCreate ["FilmGrain",2000];
PP_film ppEffectEnable true;
PP_film ppEffectAdjust [0.16,0.91,3.2,0.81,0.78,false];
PP_film ppEffectCommit 0;
// Date YYYY-MM-DD-HH-MM: [2019,8,14,3,10]. Overcast: 0.557615. Fog: 0.485345. Fog params: [0.485345,0.014,0] 
// GF PostProcess Editor parameters: Copy the following line to clipboard and click Import in the editor.
//[[false,100,[0.09,0.13,0.14,0.3]],[true,200,[-0.003,0,true]],[false,300,[1,0.2,0.2,1,1,1,1,0.05,0.01,0.05,0.01,0.1,0.1,0.2,0.2]],[true,1500,[0.95,1.34,-0.14,[0.07,0.39,0.57,0.17],[1.05,2.36,2.56,0.96],[0.21,0.33,-0.05,0.11],[0,0,0,0,0,0,5]]],[false,500,[1]],[true,2000,[0.16,0.91,3.2,0.81,0.78,false]],[false,2500,[1,1,1]]]