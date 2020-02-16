clc;
clear all;
close all;
x = [-293.9933169,-571.4949447,-287.7493388,407.5377746,670.4527126,447.1220561,47.47038224,-286.5789079,-250.7585214,-214.6878241,-282.2894898,-368.3435895,-434.1230443,-475.2901492,-517.0370593,-327.0907589,379.2938826,664.7190269,485.5750664,94.5193723,-250.3408215,-229.9929105,-189.6067643,-244.5593751,-332.127081,-399.7188767,-304.0448543,-144.7803093,-289.8445669,-514.4135883,-509.7222374,-461.9822547,-489.8982152,-520.9526478,-548.4732808,-580.0677935,-478.2931334,338.7401462,784.1842548,598.5528323,268.3626935,-140.8247299,-191.2765855,-111.9508138,-186.5600831,-278.2835464,-358.0432071,-403.146297,-385.4524578,244.647301,822.0299217,714.1940601,414.9182324,-23.97427964,-194.9495692,-121.358183,-155.7861059,-258.6165315,-331.2556868,-407.2899169,-432.8609441,-435.237033,196.2647371,881.2945764,810.353181,532.4929804,86.65015877,-147.8088341,-101.5029976,-123.7840301,-228.501058,-314.0142919,-388.5081475,-416.9710204,-450.1961878,-0.30528414,668.2853521,679.359014,386.9009338,-69.14824853,-248.9252639,-173.8279896,-192.1336289,-288.8260406,-373.235325,-440.9128412,-302.5303534,12.56725632,-56.80943454,-403.8184511,-539.7371492,-477.8240647,-471.4955748,-497.8428485,-554.420454,-585.093314,-637.7288561,-220.4507426,454.5975586,446.778403,92.91304738,-337.4070183,-381.2174207,-274.4822979,-296.0672927,-377.2841286,-453.9797353,-511.146965,-549.2601844,-405.166521,315.2638983,658.3079582,463.1566385,69.6660808,-269.4369671,-235.5105211,-184.4253627,-245.1809953,-337.628247,-421.5492711,-450.9557551,-492.1462598,-209.3081246,592.5115708,803.2148276,582.8057061,202.3563733,-144.12897,-141.8879457,-110.2868273,-205.1180852,-298.0179277,-380.3354849,-413.2725798,-450.1955749,-28.87605529,709.1588972,776.8130292,535.6429491,130.5416285,-170.4292271,-128.4406715,-125.6903576,-216.4807721,-286.2292092,-383.4596039,-429.9790104,-474.4948204,-86.40486673,714.4464206,822.03179,582.9167929,197.053234,-152.4870782,-152.6507969,-126.4794304,-218.6965063,-307.9416387,-386.7679247,-426.4815608,-473.4044747,-184.5684039,576.6333498,751.195138,517.5562221,105.8589521,-218.703229,-187.751773,-164.2868174,-245.8560303,-340.4601233,-409.2961804,-455.9224891,-490.6994314,-353.4391531,383.9804291,738.2939602,544.2139283,163.6275343,-221.1588051,-236.9446331,-189.9249401,-249.674731,-345.2123748,-425.0142736,-474.6654084,-516.2121747,-383.5220959,302.9805888,637.6726885,461.2554365,68.86219908,-302.270753,-284.3961392,-230.699813,-286.1233864,-383.9423517,-443.3172708,-502.572553,-517.1903106,-507.4352824,45.93285754,667.2943761,636.1283649,356.179755,-79.19261095,-234.9759353,-165.7530372,-180.4524048,-268.7361811,-347.7821514,-413.2180624,-436.6378515,-470.9105337,-162.6225314,597.9023266,765.8701632,546.9696164,165.9897128,-154.3145219,-123.4350406,-98.9627069,-195.0802008,-269.3450813,-352.4607048,-394.4231238,-432.7155233,-93.04414932,665.6590449,795.5354831,561.8921232,185.7087129,-161.0649486,-155.3883973,-134.0377678,-228.1645428,-311.2616199,-391.5132612,-438.9585686,-482.7414714,-253.7664022,514.1359644,777.9324968,583.0510379,208.8112259,-169.7954989,-179.3777607,-136.0273815,-209.0337782,-311.102072,-374.1206469,-436.2531097,-451.1766079,-463.3427741,69.83254731,725.9077551,688.7566359,399.8214067,-47.13225854,-220.2146892,-146.244451,-165.1596469,-266.2945961,-352.9371225,-420.9298208,-445.6975656,-455.0318523,39.89793862,623.1725505,586.3230063,274.8045456,-166.6082192,-278.0199736,-204.1578942,-227.5966241,-320.0355377,-395.9134732,-464.8176268,-491.0471175,-524.4713122,-112.6240624,598.1304494,665.2389226,409.4399512,-28.70471165,-267.2063705,-199.383687,-196.0659978,-282.2367715,-361.7169403,-427.6036377,-459.7273944,-494.3218683,-142.1025127,551.2426418,668.9208888,439.1361438,17.91122083,-230.014612,-165.8627599,-154.8829429,-236.0476106,-322.2847729,-384.9387939,-423.4866907,-449.2008853,-265.6686509,519.5575291,870.1305383,693.3734079,379.4392393,-30.36935188,-100.5654629,-41.74570346,-118.79673,-212.3608356,-278.6795536,-344.9309726,-367.0751788,-329.7334206,306.6592167,833.7022329,721.0938124,439.2692966,4.658803938,-175.9518457,-111.1290595,-156.4288534,-259.973228,-338.7251762,-409.0899355,-449.315225,-399.1780962,251.1675769,751.6294796,636.3852924,321.5681623,-105.6703063,-207.7763917,-140.231937,-183.8245961,-284.7913905,-359.6001987,-419.8654457,-451.1820483,-419.5808026,205.8263984,751.6521046,657.2827566,341.7254426,-97.97531398,-204.1571683,-137.2273016,-178.1921703,-277.3246845,-353.6887305,-416.5281152,-444.0496315,-437.5370075,132.9583762,721.1196399,664.3390436,365.7579489,-85.03736295,-225.1387115,-157.4556999,-193.7095666,-290.7202392,-368.1193761,-433.7697879,-462.9017334,-507.1533705,-199.0793954,550.1548736,721.4494204,500.7823314,79.55304984,-235.4237064,-192.1923967,-171.946875,-251.0190848,-342.338576,-406.1030029,-458.4984383,-481.8804643,-385.7110904,282.9437132,727.0085164,604.667332,269.0685586,-139.2259933,-188.3566862,-125.4353402,-173.5430258,-273.3114497,-344.7882952,-400.868706,-420.6383644,-356.5656926,310.0729322,825.4324211,716.0906181,431.7657677,10.70832868,-121.1944295,-48.96583253,-103.72085,-202.2353943,-269.5650785,-340.8900081,-379.3078417,-367.8913235,263.399983,837.4931744,743.0339892,471.178191,35.65554078,-167.5626828,-108.6341522,-146.2392277,-255.4415165,-330.7963296,-405.1576036,-436.4494812,-470.5456801,-42.23024808,682.3327525,739.331967,490.3933427,68.90831537,-201.6794108,-146.1921971,-141.1934191,-238.2060187,-325.7979063,-397.363441,-426.5860826,-460.4893011,-56.3380268,639.5264997,707.5701355,454.638319,15.6399291,-214.928638,-148.685331,-149.2647299,-241.9775466,-325.5686957,-396.7204105,-267.9049197,237.7600348,404.6908908,107.070852,-308.5186598,-375.7229532,-288.2353847,-301.5814241,-382.5683009,-451.8667418,-514.932156,-341.2506636,252.638298,414.5802726,56.30502494,-376.0500973,-405.348488,-297.9690445,-319.0324762,-396.485995,-472.7866458,-532.778983,-466.3834096,182.1163072,624.7048586,482.7784999,106.4408237,-264.0203706,-257.0038146,-184.5061337,-235.4682488,-324.6590788,-398.8923374,-436.2514996,-473.3318037,-250.6036707,614.682746,959.5184451,768.0037754,438.8864964,19.15664078,-60.80754309,-8.943230619,-85.31965839,-190.8352621,-257.4781582,-309.1282642,-341.6781466,-209.4532344,551.9322635,976.7864349,814.3590613,516.1082728,68.17292899,-85.4413118,-46.69515621,-131.2023771,-238.5141759,-310.63679,-386.1432053,-424.3934587,-386.5604974,293.6413622,852.2374026,736.2457727,445.1056008,-7.00813911,-191.3082158,-126.7737179,-165.9736063,-271.7124596,-352.2517281,-425.3883801,-458.9013675,-455.0139261,116.5290753,718.485957,657.9228565,355.6423743,-86.73745272,-224.5030801,-152.1901575,-182.3677576,-272.0806737,-358.1542663,-375.2860941,-239.114437,-229.8414159,-449.8015773,-534.039556,-485.6674968,-492.6039473,-522.6264473,-563.6183664,-569.7597129,-626.4856763,-144.5235972,655.9331846,679.3379082,405.2689967,-41.53768525,-256.6964007,-183.2921065,-184.2477174,-276.8904254,-366.1734339,-437.794241,-476.9133336,-445.9770928,201.4774736,748.0972487,636.1238168,294.122576,-151.9978135,-236.6265292,-163.6132087,-204.570364,-300.9988043,-375.7241193,-451.0239056,-473.4062689,-471.3890386,99.4535776,776.8350792,741.3746952,455.2671371,6.154989943,-185.5810689,-116.3217528,-130.7957638,-226.2363895,-304.0123447,-374.988045,-397.522995,-419.5981258,35.80647173,774.7270151,826.9621354,594.8005739,195.7734303,-102.6761224,-61.58947749,-62.32407716,-156.9759756,-237.1666306,-327.9565194,-380.1522116,-415.1042812,-217.0513683,589.3761755,910.2842725,718.4243635,386.5515021,-32.53972163,-115.8048546,-69.79986591,-146.8957733,-247.1842404,-323.877424,-380.7228512,-425.8108594,-304.5779448,397.2858747,757.6734007,585.9125082,216.6273379,-192.3571372,-220.072159,-167.5094712,-228.6261202,-328.8061036,-399.4627006,-462.3034716,-488.9565653,-479.5507874,110.2990923,695.0367329,621.3563073,302.1246027,-144.0664968,-263.3391449,-188.9026121,-217.1788005,-308.4701502,-376.8293358,-436.7040433,-471.9318796,-470.1819867,52.99655205,624.31205,588.1567224,279.20128,-157.6554511,-257.3911075,-182.072638,-209.116561,-292.737595,-379.797302,-372.188236,-197.5774622,-206.2734241,-456.3529294,-542.5662453,-484.324389,-493.5188228,-521.8086889,-564.0644481,-575.8898347,-631.970886,-163.37353,652.4751029,701.302554,435.9819545,-4.877132977,-244.5477135,-165.5455256,-165.5151072,-253.5241109,-357.327481,-412.0623235,-478.4660629,-221.030689,513.318253,724.5734401,511.9825402,83.00305428,-235.9338801,-194.048452,-161.4727618,-240.3686403,-320.9556471,-388.69353,-135.975996,281.0968676,219.4479101,-193.0577153,-421.6801323,-330.7177513,-309.7190423,-354.0071172,-418.9837066,-458.1536263,-462.5740332,217.6126803,849.528523,722.1999555,393.6347283,-42.99024333,-133.8729187,-47.3279211,-116.041733,-222.4747994,-320.2788201,-378.1033255,-415.9003182,-216.8424556,611.2726569,929.1888683,716.7174169,357.3680793,-59.83883476,-114.6878729,-67.94372001,-151.053961,-254.0711116,-341.2395628,-383.9959523,-440.2284421,-165.0387325,632.6630175,827.3808945,585.1597965,162.1219237,-181.6051251,-159.5748572,-137.0219926,-225.3068001,-323.8443135,-404.9914801,-441.4729295,-493.5773731,-170.6527244,569.0462841,704.4627027,448.4933288,-2.816473155,-274.4811566,-207.6751979,-196.2221966,-278.5228862,-363.8876072,-421.6298748,-465.390668,-506.2817604,-341.1541882,418.7887782,760.7691335,574.9055267,188.1593344,-191.0241869,-192.5122974
];
fs=25;
N=length(x);
L=10;
%Moving average filtering
% for i=1:750
%     sum=0;
%     if(i-L>0)
%     for j=i-L:i
%         sum=sum+x(j);
%     end
%     end
%     y(i)=sum/L;
% end


%Computing DFT
for k=1:750
    sum=0;
    for n=1:750
        sum=sum+x(n)*exp(-1i*2*pi*k*n/N);
    end
   X(k)=sum;
end

k=1:750;
X=abs(X);
subplot(6,1,1);plot(k,X);title('Magnitude Response Of PPG signal');xlabel('k');ylabel('MAGNITUDE');grid on; axis tight;

%Finding the First Maximum
max=0;
max2=0;
for i=1:380
    if(X(i)>max)
        max=X(i);
        peak_index=i;
    end
end
BPM=peak_index*25*60/750;
fprintf('BPM USING DFT: %d \n', BPM); 

%PART-2
%AUTOCORRELATION FUNCTION
for m=1:750
    sum=0;
    for n=1:750-m-1
        sum=sum+x(n)*x(n+m);
    end
    r(m)=sum;
end
norm=r(1);
for i=1:750
    r(i)=r(i)/norm;
end
subplot(6,1,2);
plot(r);title('Autocorrelation Of PPG signal');xlabel('t(in seconds)');ylabel('Autocorrelation');grid on; axis tight;


%Finding Zero Crossing Point
for i=1:750
    if(r(i)*r(i+1)<0)
        zcr=i;
        break
    end
end

%Finding the peak indexcafter ZCR
peak=0;
for i=zcr+1:750
    if(r(i)>peak)
        peak=r(i);
        peak_index2=i;
    end
end
BPMa=(60*25)/peak_index2;
fprintf('BPM USING AUTOCORRELATION: %f \n', BPMa);
X(41:738)=0;
t=1:750;
subplot(6,1,3);plot(t,X);


rr=[-372.3628292,50.75906574,499.6210468,-336.9832284,-194.504521,-570.4131983,-129.7377686,560.0176664,-162.6301843,-241.049091,-345.3768694,-246.2627394,-532.3337975,-454.1922526,-617.5859731,502.7867022,302.4188989,-235.1789052,-215.4168262,-407.4876842,681.9321887,237.5584422,-231.6507305,-207.6717746,-539.4690781,510.0380345,569.1028258,-209.1779718,-117.5640572,-545.5633154,129.7289655,544.0285014,-221.9785502,-219.3977602,-409.6245983,-53.15070686,-524.5237492,-429.7457311,-687.3721612,112.2270592,155.5156477,-445.3194908,-260.988726,-653.9042776,267.1661915,320.2862136,-327.9218545,-186.6943664,-593.6471656,236.3833206,618.3802148,-193.6722552,-118.3165144,-521.6362812,104.001695,697.6731799,-135.4057213,-125.6024568,-447.1692011,-177.5848674,779.727025,44.77895239,-186.704134,-329.4899044,-416.5215007,606.8871171,175.9757746,-276.3665516,-243.3171493,-584.2947178,323.5642996,412.5329016,-317.7966551,-194.9143586,-608.4013166,43.98688969,450.3668628,-310.8877823,-249.5174339,-531.2441349,-336.9276643,603.9989054,22.88647289,-249.2701958,-283.0982045,-521.2360918,465.8596853,417.0870942,-223.4539054,-127.192763,-524.6455618,313.4949285,599.5930045,-206.8215434,-144.1229739,-527.4752016,-55.83263757,682.6191464,-84.033312,-198.5712584,-361.9537461,-457.9616445,557.6493688,242.7575051,-266.1135601,-213.8236372,-556.24835,332.4495136,302.499605,-333.2363737,-213.5981909,-610.5703529,25.74520944,561.2826499,-239.5299474,-193.7430017,-496.0222578,-218.5595457,604.5518599,-58.64324522,-212.6026756,-323.252457,-445.2422719,633.6913679,413.1880184,-169.288578,-107.617096,-479.3521203,319.4443227,635.3535822,-188.4962698,-126.7695867,-520.3712187,17.20231648,642.430029,-160.8179634,-162.8002053,-448.7397069,-234.6895348,674.4952485,-1.233956521,-208.1571117,-326.0423109,-439.3987654,573.1487589,204.8782082,-280.7233677,-228.9075206,-598.1363211,216.3079339,512.1277748,-260.7779505,-182.9745671,-519.8452394,-191.1325117,643.0931245,-43.92780173,-183.3742364,-336.2709097,-361.5423529,684.94201,271.46637,-163.6920349,-155.6494209,-464.8464164,517.0683594,497.0701591,-219.2874445,-147.7903479,-551.7472694,89.86154638,649.8993594,-169.2524534,-147.3279929,-463.1070207,-167.5600108,679.2028866,-95.35339172,-140.8059371,-425.5503589,194.1651403,-56.30059363,-344.4887429,-444.1835674,-211.0468417,247.3329856,-453.1318352,-275.7780006,-595.2578987,375.2374235,167.109732,-326.79802,-218.6305824,-570.2239094,513.9062141,664.966957,-115.7864814,-39.19240046,-437.6509235,248.1242884,854.1820392,-17.65190207,-99.13074265,-413.9399155,-189.4425751,776.8956783,67.81046605,-204.8196023,-316.8406599,-470.6797157,587.1638105,165.0532388,-220.9171849,-299.0803246,-282.3362929,-459.6964612,-476.0025286,-657.8846874,-36.28866976,611.095672,-270.0451442,-149.1496706,-552.7027601,-18.38833275,628.6379552,-194.1063973,-186.4013611,-460.0994276,-303.608706,715.171076,95.71312624,-196.2770219,-251.6015469,-448.5401135,617.0087294,448.7185764,-167.2101932,-95.96385438,-509.8408181,244.6564001,762.3511787,-101.0471042,-93.99502927,-441.8257657,-104.8673041,658.801781,-97.32354932,-228.7822057,-387.2044083,-471.9132075,538.8679212,148.5593336,-312.2890566,-244.1063443,-584.2857781,355.6797579,273.8099323,-259.2010529,-283.3043745,-291.3239989,-383.2092496,-515.3422463,-589.2413816,-318.4183185,701.2290534,-136.5587372,-146.0439276,-474.2268312,-53.24573525,626.5057709,-166.8540946,-209.8942913,-310.2995729,201.2068187,-359.9838455,-292.7140686,-531.5839014,479.3513229,452.7608323,-203.9984283,-109.0943937,-518.1939586,519.4449443,596.2184343,-182.8452654,-97.82411752,-528.3324741,280.6126544,613.5763384,-228.1419821,-137.2342068,-550.8750172,3.511930956,583.5717872,-223.8816207,-213.8729198,-464.0276534,-342.5752281,638.7791726,62.12691402
];
for k=1:300
    sum=0;
    for n=1:300
        sum=sum+rr(n)*exp(-1i*2*pi*k*n/N);
    end
   P(k)=sum;
end
k=1:300;
P=abs(P);
subplot(6,1,4);plot(k,P);
max1=0;
max3=0;
for i=1:300
    if(P(i)>max1)
        max1=P(i);
        peak_index2=i;
    end
end
orate=peak_index2*10*60/300;
fprintf('ORIGINAL RESPIRATION RATE: %f \n', orate);
%IDFT of respiration signal
% for n=1:750
%     sum=0;
%     for k=1:750
%         sum=sum+X(k)*exp(1i*2*pi*k*n/N);
%     end
%    r(n)=sum/N;
% end


t=1:750;
subplot(6,1,5);plot(t,real(r));
rate=(8*25)*60/750;
fprintf('RESPIRATION RATE: %f \n', rate);

% t=1:300;
% subplot(6,1,6);plot(t,(rr));