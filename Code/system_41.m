%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%README:
%%Dr.-Ing. Jose L. Rueda (E-Mail: jose.rueda@uni-due.de)
%%Sebastian Wildenhues (E-Mail: sebastian.wildenhues@uni-due.de)
%%11th February 2014

%%Task Force on Modern Heuristic Optimization Test Beds
%%Working Group on Modern Heuristic Optimization
%%Intelligent Systems Subcommittee
%%Power System Analysis, Computing, and Economic Committee

%%This is a typical layout of an off-shore WPP. Parameters of system 
%%components were taken from a off-shore WPP in Germany.
%%See Matpower user's manual for details on the case file format.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function mpc = system_41
%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 100;

%% Bus data
% bus_i	   type	    Pd	   Qd	    Gs	    Bs	   area	   Vm	   Va	   baseKV  zone	   Vmax	    Vmin
mpc.bus = [
	1       3       0       0       0       0       1       1       0        220     1       1.01 	0.99;
	2       1       0       0       0.5208  -12.1   1       1       0        110     1       1.1 	0.9;
	3       1       0       0       0       0       1       1       0        110     1       1.1 	0.9;
	4       1       0       0       0.4586  -8.0667 1       1       0        110     1       1.1	0.9;  
	5       1       0       0       0       9.8965  1       1       0        33      1       1.1    0.9;
    6       1       0       0       0.0049 	0       1       1       0        33      1       1.1	0.9;
    7       1       0       0       0.0049 	0       1       1       0        33      1       1.1	0.9;
    8       1       0       0       0.0049 	0       1       1       0        33      1       1.1	0.9;
    9       1       0       0       0.0049 	0       1       1       0        33      1       1.1	0.9;
   10       1       0       0       0.0049 	0       1       1       0        33      1       1.1	0.9;
   11       1       0       0       0.0049 	0       1       1       0        33      1       1.1	0.9;
   12       1       0       0       0.0049 	0       1       1       0        33      1       1.1	0.9;
   13       1       0       0       0.0049 	0       1       1       0        33      1       1.1	0.9;
   14       1       0       0       0.0049  0       1       1       0        33      1       1.1	0.9;
   15       1       0       0       0.0049  0       1       1       0        33      1       1.1	0.9;
   16       1       0       0       0.0049  0       1       1       0        33      1       1.1	0.9;
   17       1       0       0       0.0049  0       1       1       0        33      1       1.1	0.9;
   18       1       0       0       0.0049  0       1       1       0        33      1       1.1	0.9;
   19       1       0       0       0.0049  0       1       1       0        33      1       1.1	0.9;
   20       1       0       0       0.0049  0       1       1       0        33      1       1.1	0.9;
   21       1       0       0       0.0049  0       1       1       0        33      1       1.1	0.9;
   22       1       0       0       0.0049  0       1       1       0        33      1       1.1	0.9;
   23       1       0       0       0.0049  0       1       1       0        33      1       1.1	0.9;
   24       1       -5      0       0       0       1       1       0        0.95    1       1.05	0.95;
   25       1       -5      0       0       0       1       1       0        0.95    1       1.05	0.95;
   26       1       -5      0       0       0       1       1       0        0.95    1       1.05	0.95;
   27       1       -5      0       0       0       1       1       0        0.95    1       1.05	0.95;
   28       1       -5      0       0       0       1       1       0        0.95    1       1.05	0.95;
   29       1       -5      0       0       0       1       1       0        0.95    1       1.05	0.95;
   30       1       -5      0       0       0       1       1       0        0.95    1       1.05	0.95;
   31       1       -5      0       0       0       1       1       0        0.95    1       1.05	0.95;
   32       1       -5      0       0       0       1       1       0        0.95    1       1.05	0.95;
   33       1       -5      0       0       0       1       1       0        0.95    1       1.05	0.95;
   34       1       -5      0       0       0       1       1       0        0.95    1       1.05	0.95;
   35       1       -5      0       0       0       1       1       0        0.95    1       1.05	0.95;
   36       1       -5      0       0       0       1       1       0        0.95    1       1.05	0.95;
   37       1       -5      0       0       0       1       1       0        0.95    1       1.05	0.95;
   38       1       -5      0       0       0       1       1       0        0.95    1       1.05	0.95;
   39       1       -5      0       0       0       1       1       0        0.95    1       1.05	0.95;
   40       1       -5      0       0       0       1       1       0        0.95    1       1.05	0.95;
   41       1       -5      0       0       0       1       1       0        0.95    1       1.05	0.95;
];

%% Generator data
%  bus	Pg	    Qg	    Qmax	Qmin	Vg	   mBase  status   Pmax    Pmin	    Pc1	   Pc2	  Qc1min  Qc1max  Qc2min  Qc2max  ramp_agc  ramp_10  ramp_30  ramp_q  apf
mpc.gen = [
	1	0     0       1000     -1000	1.02	100     1       1000     0       0       0       0       0       0       0       0       0       0       0       0; %Equivalent grid
];

%% Branch data
% fbus  tbus	   r	       x	      b	       rateA   rateB   rateC  ratio   angle  status	    ratiomax	ratiomin
mpc.branch = [
	1	2       0.0016      0.0640      0           200     200     200     1.01	0       1       1.149    0.851;
    2	3       0.0024      0.0104      0.06536     135     135     135     0       0       1       0        0;
    3	4       0.0136      0.0241      0.2115      135     135     135     0       0       1       0        0;
 	4	5       0.0032      0.1654      0           100     100     100     1.01	0       1       1.13     0.87;
    6  24       0.0065      1.5282      0           5.5     5.5     5.5     1.00    0       1       0        0;
    7  25       0.0065      1.5282      0           5.5     5.5     5.5     1.00    0       1       0        0;
    8  26       0.0065      1.5282      0           5.5     5.5     5.5     1.00    0       1       0        0;
    9  27       0.0065      1.5282      0           5.5     5.5     5.5     1.00    0       1       0        0;
    10 28       0.0065      1.5282      0           5.5     5.5     5.5     1.00    0       1       0        0;
    11 29       0.0065      1.5282      0           5.5     5.5     5.5     1.00    0       1       0        0;
    12 30       0.0065      1.5282      0           5.5     5.5     5.5     1.00    0       1       0        0;
    13 31       0.0065      1.5282      0           5.5     5.5     5.5     1.00    0       1       0        0;
    14 32       0.0065      1.5282      0           5.5     5.5     5.5     1.00	0       1       0        0;
    15 33       0.0065      1.5282      0           5.5     5.5     5.5     1.00	0       1       0        0;
    16 34       0.0065      1.5282      0           5.5     5.5     5.5     1.00	0       1       0        0;
    17 35       0.0065      1.5282      0           5.5     5.5     5.5     1.00	0       1       0        0;
    18 36       0.0065      1.5282      0           5.5     5.5     5.5     1.00	0       1       0        0;
    19 37       0.0065      1.5282      0           5.5     5.5     5.5     1.00	0       1       0        0;
    20 38       0.0065      1.5282      0           5.5     5.5     5.5     1.00	0       1       0        0;
    21 39       0.0065      1.5282      0           5.5     5.5     5.5     1.00	0       1       0        0;
    22 40       0.0065      1.5282      0           5.5     5.5     5.5     1.00	0       1       0        0;
    23 41       0.0065      1.5282      0           5.5     5.5     5.5     1.00	0       1       0        0;
    5	6       0.0081      0.0279      0.0024      31.5    31.5    31.5    0       0       1       0        0;
    6	7       0.0023      0.0064      4.9084e-4   28.5    28.5    28.5    0       0       1       0        0;
    7	8       0.0022      0.0062      4.7331e-4   28.5    28.5    28.5    0       0       1       0        0;
    8	9       0.0052      0.0080      4.0319e-4   20      20      20      0       0       1       0        0;
    9  10       0.0046      0.0070      3.5117e-4   20      20      20      0       0       1       0        0;
   10  11       0.0048      0.0074      3.7068e-4   20      20      20      0       0       1       0        0;
    5  12       0.0019      0.0067      5.7680e-4   31.5    31.5    31.5    0       0       1       0        0;
   12  13       0.0025      0.0069      5.2590e-4   28.5    28.5    28.5    0       0       1       0        0;
   13  14       0.0025      0.0069      5.2590e-4   28.5    28.5    28.5    0       0       1       0        0;
   14  15       0.0046      0.0071      3.5767e-4   20      20      20      0       0       1       0        0;
   15  16       0.0046      0.0071      3.5767e-4   20      20      20      0       0       1       0        0;
   16  17       0.0046      0.0071      3.5767e-4   20      20      20      0       0       1       0        0;
    5  18       0.0056      0.0193      0.0017      31.5    31.5    31.5    0       0       1       0        0;
   18  19       0.0030      0.0085      6.4861e-4   28.5    28.5    28.5    0       0       1       0        0;
   19  20       0.0024      0.0068      5.1714e-4   28.5    28.5    28.5    0       0       1       0        0;
   20  21       0.0049      0.0075      3.7718e-4   20      20      20      0       0       1       0        0;
   21  22       0.0048      0.0074      3.7068e-4   20      20      20      0       0       1       0        0;
   22  23       0.0048      0.0074      3.7068e-4   20      20      20      0       0       1       0        0;
];

%% Day profile of active power dispatch for individual wind turbines
mpc.WPP_dispatch = [
    2.8326	2.8253	2.8302	2.7878	2.8567	2.835	2.8143	2.7906	2.8283	2.8244	2.8278	2.7929	2.8147	2.8094	2.8583	2.826	2.839	2.8286
    2.7711	2.7735	2.7729	2.7598	2.7713	2.779	2.7398	2.7693	2.7772	2.7398	2.7948	2.7359	2.8077	2.7584	2.7296	2.732	2.7318	2.7904
    2.1776	2.1674	2.1645	2.1908	2.1462	2.1771	2.1415	2.1984	2.1612	2.206	2.1761	2.1487	2.1719	2.1734	2.2035	2.1423	2.1867	2.1693
    2.6385	2.612	2.6507	2.6148	2.6352	2.6688	2.6699	2.6434	2.6443	2.6305	2.6204	2.5999	2.6619	2.612	2.6069	2.6115	2.6632	2.5969
    2.7753	2.8125	2.7526	2.7548	2.7684	2.745	2.7409	2.7581	2.8028	2.8204	2.7995	2.7985	2.7758	2.7534	2.817	2.7802	2.7937	2.7425
    3.406	3.4466	3.3756	3.3661	3.4422	3.3621	3.4296	3.4414	3.3976	3.45	3.4458	3.4571	3.4504	3.4173	3.379	3.4558	3.4384	3.358
    3.0896	3.1133	3.0715	3.0519	3.1156	3.1038	3.1317	3.1215	3.0864	3.0817	3.0611	3.0925	3.0651	3.1193	3.1031	3.0933	3.0785	3.0877
    3.2262	3.1841	3.2152	3.2433	3.2208	3.2448	3.1873	3.2147	3.2053	3.2061	3.2054	3.1804	3.2362	3.21	3.2272	3.1898	3.1909	3.2423
    3.8227	3.7968	3.835	3.8046	3.8219	3.8762	3.8303	3.8236	3.8692	3.8649	3.7743	3.7975	3.7893	3.847	3.8324	3.7702	3.8605	3.859
    4.1	4.0717	4.1406	4.1297	4.1443	4.1101	4.1004	4.1282	4.1472	4.124	4.0514	4.0438	4.082	4.0433	4.1446	4.0797	4.1379	4.0553
    2.9397	2.9302	2.8998	2.9671	2.9122	2.9021	2.9638	2.9473	2.9642	2.9236	2.894	2.9031	2.9537	2.9791	2.9523	2.9468	2.9621	2.9204
    3.3947	3.3561	3.406	3.395	3.4025	3.4433	3.4094	3.3501	3.4047	3.3475	3.425	3.3994	3.4459	3.3593	3.4385	3.3669	3.4403	3.4042
    3.524	3.5557	3.5315	3.4887	3.5624	3.5521	3.5646	3.4998	3.5443	3.5498	3.4924	3.5135	3.5487	3.5485	3.5549	3.4996	3.505	3.5262
    4.2228	4.2214	4.1804	4.2009	4.2481	4.2205	4.2075	4.2702	4.1836	4.2502	4.2709	4.2815	4.2463	4.1865	4.2659	4.2335	4.2377	4.2271
    5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5
    4.9038	4.8837	4.8813	4.9501	4.8803	4.8534	4.9353	4.8957	4.9641	4.9597	4.9448	4.9089	4.95	4.8916	4.9197	4.854	4.8493	4.8981
    4.8678	4.8203	4.9128	4.9299	4.8332	4.8686	4.9303	4.8636	4.9024	4.861	4.9163	4.8279	4.8313	4.8757	4.8686	4.9262	4.8257	4.8565
    5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5
    5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5
    5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5
    5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5
    5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5
    5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5
    5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5
    4.5743	4.5963	4.5287	4.6036	4.5478	4.629	4.5421	4.6188	4.5151	4.5419	4.5577	4.5232	4.5309	4.5356	4.6014	4.6074	4.5292	4.6094
    4.4735	4.4341	4.5191	4.4942	4.4351	4.418	4.4911	4.477	4.4453	4.5185	4.5098	4.4152	4.5199	4.437	4.443	4.4963	4.5339	4.4939
    4.5725	4.5502	4.5225	4.602	4.5847	4.621	4.6256	4.57	4.5731	4.5834	4.5261	4.5464	4.601	4.6066	4.6308	4.6302	4.6322	4.5275
    5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5
    4.7692	4.7447	4.7513	4.754	4.7119	4.8198	4.7112	4.7195	4.7329	4.7509	4.7408	4.7691	4.7763	4.8048	4.8036	4.7706	4.717	4.8271
    4.8695	4.9146	4.8709	4.8422	4.8258	4.8523	4.9093	4.8786	4.8244	4.9081	4.8592	4.8499	4.8427	4.8771	4.9075	4.8915	4.9251	4.8772
    3.6954	3.6454	3.6501	3.6586	3.6626	3.7256	3.6435	3.6474	3.6657	3.7278	3.7249	3.6907	3.7368	3.6515	3.713	3.652	3.7058	3.7222
    3.289	3.2405	3.302	3.3058	3.2626	3.2801	3.2806	3.3212	3.2528	3.2921	3.3279	3.2982	3.2943	3.2427	3.2715	3.2953	3.2852	3.3136
    3.4593	3.4629	3.4454	3.4459	3.504	3.432	3.5095	3.4851	3.4811	3.4479	3.5036	3.4286	3.4895	3.5043	3.4492	3.5066	3.4306	3.4724
    3.6088	3.6246	3.6014	3.6336	3.6256	3.5857	3.6373	3.5617	3.5958	3.6337	3.5609	3.6235	3.6151	3.6088	3.5631	3.6451	3.604	3.5688
    2.9285	2.9276	2.9062	2.8934	2.9284	2.9627	2.9524	2.9369	2.9613	2.9465	2.9332	2.8848	2.9009	2.9704	2.9646	2.9635	2.9017	2.9129
    3.0014	2.9638	3.0445	3.0341	2.9951	3.0412	3.015	3.0093	3.0202	3.0438	2.9992	2.9865	3.0203	2.9707	3.016	2.9954	3.0088	3.0133
    2.0754	2.0526	2.0876	2.0548	2.0665	2.0526	2.097	2.1124	2.1055	2.0734	2.0975	2.0736	2.0932	2.0487	2.0568	2.0449	2.0631	2.0582
    1.343	1.3672	1.3606	1.3471	1.3312	1.3492	1.3698	1.3244	1.342	1.3353	1.3575	1.3279	1.3559	1.3223	1.3374	1.325	1.3449	1.3343
    1.3267	1.3341	1.3251	1.3139	1.3178	1.3301	1.3108	1.318	1.3055	1.3317	1.3132	1.3197	1.3505	1.3545	1.338	1.3201	1.3549	1.3247
    1.6357	1.6495	1.66	1.6545	1.659	1.6077	1.6554	1.6135	1.6487	1.6534	1.6207	1.6471	1.6395	1.6281	1.6202	1.6085	1.6057	1.6374
    1.9264	1.9166	1.9252	1.9363	1.9275	1.9074	1.9553	1.9023	1.9559	1.8928	1.8905	1.9507	1.9603	1.9079	1.9405	1.8953	1.8926	1.9326
    2.5037	2.488	2.509	2.51	2.4976	2.4945	2.5033	2.493	2.5312	2.5165	2.4969	2.5221	2.5082	2.5306	2.5377	2.5452	2.5383	2.5069
    2.6478	2.6605	2.6371	2.6434	2.6257	2.6411	2.6278	2.6783	2.6546	2.6875	2.6453	2.6226	2.6919	2.6165	2.6787	2.6865	2.6817	2.6877
    2.6129	2.6226	2.6266	2.6003	2.5875	2.5738	2.6076	2.5813	2.6456	2.5758	2.6121	2.5939	2.5936	2.5851	2.6214	2.6462	2.6542	2.6438
    4.0995	4.0854	4.1352	4.112	4.071	4.0582	4.1012	4.1446	4.1119	4.119	4.1025	4.0519	4.1384	4.0704	4.1485	4.08	4.1091	4.1001
    3.3157	3.3379	3.3053	3.3425	3.2795	3.3581	3.2935	3.2983	3.311	3.3448	3.334	3.3602	3.3272	3.2807	3.3017	3.3392	3.2764	3.2831
    3.0966	3.0517	3.0809	3.12	3.098	3.0811	3.0946	3.1258	3.0917	3.1068	3.0919	3.0862	3.0649	3.1035	3.1339	3.0562	3.1062	3.1331
    2.9379	2.969	2.9268	2.9605	2.9839	2.9172	2.9665	2.9204	2.9535	2.9071	2.9025	2.9051	2.9632	2.9191	2.9701	2.9362	2.9162	2.9156
    2.6329	2.6571	2.6237	2.6174	2.6142	2.6642	2.6442	2.5946	2.6466	2.616	2.5896	2.6115	2.6285	2.6308	2.66	2.6399	2.5955	2.6132
    2.1622	2.1471	2.1774	2.1575	2.146	2.1826	2.1985	2.1993	2.1376	2.1427	2.1916	2.1243	2.1391	2.1247	2.1539	2.1346	2.1542	2.1273
    1.9708	1.9676	1.9648	1.9713	1.9457	1.9655	1.9467	1.9508	1.9902	1.9715	1.9549	1.9407	2.0018	1.9872	1.9372	1.9831	1.9774	1.9775
    1.6019	1.6104	1.6237	1.5907	1.5949	1.5961	1.6287	1.6186	1.5841	1.6128	1.6291	1.6011	1.6135	1.6147	1.6332	1.6177	1.6048	1.609
    1.4011	1.3984	1.4144	1.3871	1.4316	1.4102	1.4279	1.4202	1.3955	1.3764	1.424	1.4074	1.4105	1.3998	1.3716	1.4155	1.3913	1.3898
    1.5429	1.5398	1.5548	1.5189	1.5411	1.5549	1.5719	1.5443	1.5483	1.5581	1.5199	1.5278	1.5309	1.5437	1.5313	1.528	1.5592	1.5215
    1.55	1.5739	1.5524	1.5375	1.5804	1.5203	1.5465	1.5425	1.5336	1.581	1.567	1.5654	1.549	1.5362	1.5408	1.5636	1.519	1.559
    2.1794	2.1811	2.1862	2.2018	2.173	2.1714	2.1844	2.2006	2.1836	2.1699	2.1686	2.2015	2.1751	2.1882	2.1966	2.2018	2.1557	2.1456
    2.0684	2.0643	2.0345	2.0427	2.0725	2.1051	2.0985	2.0685	2.105	2.0584	2.0569	2.0821	2.0343	2.0347	2.0997	2.0322	2.0991	2.0578
    2.0762	2.0977	2.0592	2.0836	2.041	2.0969	2.0683	2.0692	2.1121	2.0533	2.0637	2.0601	2.0955	2.0396	2.0549	2.0636	2.1113	2.0992
    2.2289	2.2314	2.2128	2.1921	2.2292	2.2516	2.2002	2.2507	2.2217	2.2308	2.2248	2.2658	2.2514	2.2004	2.2379	2.2351	2.2563	2.26
    1.5926	1.5794	1.6205	1.5625	1.6119	1.5855	1.5762	1.6207	1.5795	1.5844	1.6058	1.6083	1.5744	1.5973	1.5935	1.6242	1.5816	1.562
    1.3518	1.3285	1.3411	1.379	1.3741	1.3579	1.3641	1.3675	1.3396	1.3723	1.3408	1.3396	1.3797	1.3356	1.3614	1.3723	1.3308	1.3427
    1.4464	1.4293	1.4253	1.4714	1.42	1.4344	1.425	1.4352	1.4422	1.4664	1.4187	1.4723	1.4198	1.4223	1.4747	1.4676	1.4478	1.4454
    1.4071	1.427	1.3802	1.4216	1.3795	1.4086	1.4257	1.3856	1.4079	1.4302	1.4142	1.4189	1.4141	1.4048	1.3968	1.4251	1.423	1.4014
    1.9052	1.9367	1.9365	1.8859	1.9393	1.929	1.888	1.8729	1.9346	1.8702	1.9347	1.8943	1.9336	1.888	1.9102	1.8689	1.93	1.878
    2.4115	2.3704	2.3967	2.447	2.4216	2.4119	2.3986	2.4108	2.4503	2.4	2.4074	2.4059	2.415	2.3972	2.383	2.4452	2.3783	2.4078
    2.8965	2.9328	2.9169	2.8797	2.8908	2.9259	2.9339	2.8658	2.9199	2.8586	2.913	2.8775	2.8996	2.9115	2.8572	2.9016	2.9118	2.9384
    2.6758	2.6778	2.7128	2.702	2.685	2.6659	2.704	2.6752	2.684	2.6406	2.6608	2.6384	2.6666	2.6946	2.699	2.6476	2.6485	2.6767
    1.6109	1.6257	1.602	1.6279	1.5905	1.6032	1.6184	1.5905	1.6175	1.6342	1.6269	1.6305	1.5884	1.6248	1.6333	1.6219	1.6037	1.5929
    1.7221	1.7531	1.7236	1.7208	1.7034	1.7494	1.7211	1.7424	1.713	1.6941	1.7028	1.7163	1.7279	1.7491	1.6908	1.6989	1.7286	1.7014
    2.3093	2.2842	2.2819	2.2982	2.3295	2.2803	2.2734	2.2829	2.3124	2.3252	2.2964	2.3265	2.2857	2.3326	2.3446	2.3077	2.3034	2.2897
    2.4355	2.4375	2.4581	2.4612	2.4777	2.4521	2.4138	2.4004	2.4244	2.4302	2.4293	2.4374	2.4245	2.4391	2.473	2.4629	2.4241	2.4603
    2.4432	2.4167	2.4685	2.4248	2.4371	2.4827	2.4087	2.457	2.4267	2.4613	2.4584	2.4512	2.4365	2.4139	2.4077	2.4146	2.4268	2.4441
    2.8529	2.8138	2.8222	2.8427	2.8807	2.8348	2.8638	2.8112	2.8647	2.8443	2.8756	2.8757	2.8752	2.8726	2.8729	2.8774	2.8242	2.8285
    3.6045	3.6309	3.5956	3.6432	3.5871	3.5827	3.6283	3.6338	3.5616	3.6162	3.6452	3.6368	3.6415	3.6433	3.6167	3.6409	3.6093	3.6185
    4.053	4.0035	4.0198	4.0654	4.0821	4.0095	4.0994	4.0429	4.0346	4.043	4.0429	4.0756	4.0554	4.0955	4.0711	3.9977	4.0198	4.0048
    5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5
    5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5
    5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5
    5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5
    5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5
    4.9041	4.8797	4.9053	4.881	4.8852	4.8764	4.8975	4.8638	4.8468	4.9253	4.9227	4.9533	4.8959	4.919	4.9368	4.8515	4.9277	4.8815
    3.2616	3.2615	3.2938	3.2611	3.2623	3.269	3.31	3.284	3.2615	3.2499	3.2961	3.2699	3.3075	3.2652	3.2622	3.2332	3.2758	3.31
    3.3329	3.3648	3.2915	3.3009	3.3059	3.3685	3.288	3.335	3.3552	3.3414	3.2882	3.2919	3.3797	3.2839	3.3274	3.3405	3.3238	3.3082
    3.0431	3.0406	3.0836	3.0175	3.0124	3.087	3.0072	2.9996	3.01	3.0548	3.0266	3.0342	3.0439	3.0309	3.0552	3.0299	3.0406	3.0522
    2.7779	2.809	2.7719	2.7364	2.7692	2.7398	2.8046	2.7374	2.7507	2.7899	2.7438	2.7347	2.8181	2.7804	2.7938	2.772	2.7778	2.735
    2.8508	2.8259	2.8577	2.8472	2.8527	2.8108	2.8625	2.8269	2.8732	2.8432	2.8724	2.8717	2.8752	2.8146	2.8642	2.8934	2.8862	2.8725
    3.3366	3.3552	3.338	3.3772	3.3652	3.3552	3.3816	3.3441	3.3739	3.2935	3.3453	3.3742	3.3826	3.379	3.3703	3.3707	3.3283	3.2887
    3.339	3.3662	3.3789	3.3253	3.311	3.3841	3.3631	3.2898	3.3229	3.383	3.3511	3.3128	3.3756	3.296	3.355	3.3184	3.3663	3.2888
    3.1936	3.1785	3.1692	3.1913	3.2037	3.1753	3.1901	3.232	3.167	3.1719	3.2038	3.1569	3.186	3.1822	3.1909	3.1864	3.1629	3.1774
    4.2166	4.1935	4.199	4.2153	4.2445	4.1678	4.26	4.2251	4.2217	4.1643	4.2138	4.2055	4.182	4.2227	4.2097	4.2368	4.1609	4.1741
    4.501	4.4892	4.5001	4.4759	4.4846	4.5049	4.5533	4.5444	4.5334	4.5326	4.5278	4.503	4.5049	4.5035	4.4805	4.4891	4.4852	4.5182
    3.473	3.4289	3.512	3.4783	3.4593	3.4544	3.4827	3.4882	3.4725	3.443	3.4946	3.4721	3.4751	3.4917	3.4649	3.4625	3.4832	3.4249
    4.3	4.2583	4.3548	4.3123	4.3433	4.3285	4.3193	4.2797	4.2452	4.2651	4.3578	4.2451	4.2718	4.2713	4.2764	4.2941	4.2494	4.2718
    5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5	5
    3.7912	3.7837	3.7786	3.7851	3.7616	3.7659	3.8019	3.753	3.8068	3.7835	3.8246	3.8385	3.7786	3.8446	3.7861	3.8285	3.8405	3.7536
    3.2317	3.2219	3.2739	3.2731	3.1977	3.2348	3.2741	3.2558	3.1912	3.2545	3.2429	3.1973	3.2194	3.2736	3.1947	3.2141	3.2677	3.2177
];

%% Day profile of WPP reactive power requirement at PCC
mpc.WPP_q_ref_PCC = [
    0
    0
    0
    0
    0
    0
    0
    0
    -0.165
    -0.165
    -0.165
    -0.165
    -0.165
    -0.165
    -0.165
    -0.165
    -0.33
    -0.33
    -0.33
    -0.33
    -0.33
    -0.33
    -0.33
    -0.33
    -0.165
    -0.165
    -0.165
    -0.165
    -0.165
    -0.165
    -0.165
    -0.165
    0.165
    0.165
    0.165
    0.165
    0.165
    0.165
    0.165
    0.165
    0
    0
    0
    0
    -0.165
    -0.165
    -0.165
    -0.165
    -0.33
    -0.33
    -0.33
    -0.3245
    -0.315
    -0.3212
    -0.32165
    -0.33
    -0.165
    -0.165
    -0.165
    -0.165
    0
    0
    0
    0
    0.165
    0.165
    0.165
    0.165
    0.165
    0.165
    0.165
    0.165
    0.33
    0.33
    0.33
    0.33
    0.33
    0.33
    0.33
    0.33
    0.165
    0.165
    0.165
    0.165
    0.165
    0.165
    0.165
    0.165
    0
    0
    0
    0
    0
    0
    0
    0
];