% MPshockdataTVP.m

% This file loads data to be used in empirical analysis of MP shocks from
% VARs vs R&R approach.  This loads: log(IP), UE, log(CPI), log(CPIcore),
% log (PPI finished goods), annual CPI inflation (100*log(CPI/CPI(-12)),
% annual CPI core inflation, annual PPI inflation, Effective FFR, and CRB
% Commodity price index.  

% The last variable is the MP shock series from estimation of Taylor rule
% with TVP

% data is from 1965:1 until 1996:12 monthly.

Z=[3.522	4.9	3.443	3.484	3.526	1.093	1.235	1.482	3.9	104.9	0
3.528	5.1	3.443	3.484	3.529	1.19	1.235	1.775	3.98	104	0
3.541	4.7	3.444	3.484	3.532	1.189	1.235	2.068	4.04	106.2	0
3.545	4.8	3.446	3.487	3.529	1.38	1.541	1.775	4.09	108	0
3.553	4.6	3.449	3.487	3.532	1.601	1.541	1.77	4.1	106.8	0
3.561	4.6	3.453	3.487	3.535	1.916	1.231	2.062	4.04	106.4	0
3.57	4.4	3.453	3.487	3.538	1.789	1.231	2.353	4.09	105.5	0
3.575	4.4	3.452	3.487	3.541	1.597	1.231	2.643	4.12	106.8	0
3.577	4.3	3.454	3.49	3.547	1.723	1.536	3.221	4.01	107.7	0
3.587	4.2	3.455	3.49	3.547	1.689	1.227	3.221	4.08	108.1	0
3.591	4.1	3.458	3.493	3.555	1.715	1.223	3.785	4.1	108.8	0
3.604	4	3.461	3.497	3.555	1.902	1.527	3.785	4.32	112	0
3.613	4	3.462	3.497	3.558	1.9	1.22	3.184	4.42	114.7	0
3.62	3.8	3.468	3.5	3.558	2.525	1.522	2.89	4.6	116.9	0
3.633	3.8	3.471	3.5	3.552	2.741	1.522	2.026	4.65	115	0
3.635	3.8	3.474	3.506	3.558	2.828	1.818	2.89	4.67	114.2	0
3.644	3.9	3.477	3.509	3.567	2.726	2.118	3.449	4.9	113.8	0
3.649	3.8	3.478	3.512	3.572	2.407	2.417	3.72	5.17	113.8	0
3.655	3.8	3.48	3.515	3.57	2.718	2.715	3.148	5.3	115.6	0
3.655	3.8	3.486	3.517	3.57	3.427	3.012	2.857	5.53	111.2	0
3.665	3.7	3.489	3.52	3.567	3.511	3.003	1.997	5.4	108.4	0
3.672	3.7	3.492	3.526	3.567	3.721	3.593	1.997	5.53	105	0
3.665	3.6	3.493	3.526	3.564	3.497	3.289	0.853	5.76	104.7	0
3.667	3.8	3.494	3.529	3.564	3.304	3.279	0.853	5.4	105	0
3.672	3.9	3.493	3.532	3.564	3.149	3.572	0.568	4.94	104.6	0
3.66	3.8	3.497	3.532	3.567	2.827	3.269	0.851	5	103.5	0
3.655	3.8	3.497	3.535	3.575	2.516	3.561	2.266	4.53	100.8	0
3.664	3.8	3.5	3.538	3.575	2.509	3.25	1.695	4.05	100.1	0
3.655	3.8	3.5	3.541	3.578	2.292	3.24	1.124	3.94	101.8	0
3.655	3.9	3.506	3.544	3.578	2.802	3.231	0.56	3.98	100.3	0
3.653	3.8	3.509	3.547	3.581	2.886	3.221	1.12	3.79	98.9	0
3.672	3.8	3.512	3.552	3.581	2.57	3.499	1.12	3.9	98.3	0
3.67	3.8	3.515	3.555	3.584	2.562	3.489	1.681	3.99	97.9	0
3.678	4	3.517	3.558	3.586	2.555	3.184	1.958	3.88	96.7	0
3.693	3.9	3.523	3.561	3.589	3.055	3.469	2.518	4.13	97.6	0
3.703	3.8	3.526	3.567	3.592	3.228	3.741	2.793	4.51	98.3	0
3.702	3.7	3.529	3.57	3.597	3.582	3.731	3.343	4.6	98.7	0
3.706	3.8	3.532	3.575	3.597	3.572	4.293	3.06	4.71	98.4	0
3.709	3.7	3.535	3.578	3.6	3.864	4.28	2.49	5.05	98.7	0
3.71	3.5	3.538	3.581	3.603	3.852	4.268	2.763	5.76	96.9	0
3.721	3.5	3.541	3.584	3.605	4.143	4.256	2.755	6.11	96.8	0
3.725	3.7	3.547	3.589	3.611	4.118	4.521	3.297	6.07	96.3	0
3.724	3.7	3.552	3.595	3.611	4.393	4.783	3.018	6.02	95.2	0
3.726	3.5	3.555	3.597	3.614	4.38	4.483	3.288	6.03	96	0
3.73	3.4	3.558	3.603	3.614	4.368	4.743	3.01	5.78	97	0
3.732	3.4	3.564	3.608	3.616	4.639	5.001	3.002	5.91	98.8	0
3.745	3.4	3.567	3.614	3.616	4.33	5.257	2.725	5.82	99.6	0
3.748	3.4	3.572	3.616	3.622	4.599	4.96	2.985	6.02	100.8	0
3.754	3.4	3.575	3.619	3.627	4.585	4.946	2.969	6.3	103.9	0
3.761	3.4	3.578	3.627	3.632	4.572	5.185	3.5	6.61	105.8	0
3.768	3.4	3.586	3.632	3.638	5.115	5.436	3.754	6.79	106.5	-0.303212001
3.765	3.4	3.592	3.64	3.64	5.376	5.948	3.744	7.41	108.7	0.280478066
3.761	3.4	3.595	3.64	3.643	5.361	5.67	3.734	8.67	110.4	-0.104167974
3.771	3.5	3.6	3.645	3.645	5.331	5.639	3.453	8.9	111.3	-0.154625188
3.776	3.5	3.605	3.651	3.651	5.301	5.609	3.974	8.61	111.4	0.141864224
3.778	3.5	3.608	3.656	3.658	5.286	5.853	4.48	9.19	113.1	0.167425787
3.778	3.7	3.614	3.661	3.661	5.542	5.822	4.738	9.15	114.1	0.132581175
3.778	3.7	3.619	3.666	3.666	5.511	5.791	4.981	9	113.7	0.088046417
3.769	3.5	3.624	3.669	3.664	5.763	5.506	4.725	8.85	113.9	0.059635091
3.766	3.5	3.63	3.674	3.666	5.731	5.746	4.445	8.97	114.9	0.092924266
3.747	3.9	3.635	3.679	3.666	5.98	5.984	3.912	8.98	115.9	-0.12607547
3.747	4.2	3.64	3.684	3.666	6.227	5.686	3.381	8.98	116.4	-0.357681057
3.745	4.4	3.645	3.691	3.669	5.916	5.907	3.109	7.76	116.2	0.195845333
3.743	4.6	3.651	3.699	3.669	5.884	5.862	2.846	8.1	116.4	0.241952081
3.742	4.8	3.653	3.701	3.669	5.868	6.109	2.584	7.94	113.9	0.308934197
3.738	4.9	3.658	3.709	3.679	5.837	6.323	3.338	7.6	113.6	-0.073940966
3.741	5	3.661	3.711	3.679	5.55	6.047	2.817	7.21	112.9	0.000614543
3.739	5.1	3.664	3.716	3.684	5.535	6.017	2.545	6.61	112.6	-0.271995295
3.732	5.4	3.669	3.721	3.684	5.506	5.987	2.287	6.29	111	-0.04048563
3.712	5.5	3.674	3.726	3.686	5.477	5.957	2.025	6.2	111.2	-0.03678026
3.706	5.9	3.679	3.733	3.691	5.449	6.422	2.781	5.6	108.7	-0.380953909
3.729	6.1	3.684	3.738	3.694	5.421	6.39	2.774	4.9	106.2	-0.061264445
3.736	5.9	3.686	3.74	3.696	5.143	6.122	3.023	4.14	108.1	-0.437038604
3.734	5.9	3.686	3.742	3.701	4.616	5.855	3.518	3.72	110	-0.015715116
3.733	6	3.689	3.742	3.704	4.343	5.104	3.509	3.71	109.5	0.006083455
3.739	5.9	3.691	3.747	3.699	4.072	4.832	3.015	4.15	108.6	0.076847983
3.744	5.9	3.696	3.752	3.706	4.31	5.055	3.755	4.63	108.4	-0.034070174
3.748	5.9	3.701	3.757	3.706	4.288	4.786	2.74	4.91	108.7	0.132307472
3.745	6	3.704	3.759	3.706	4.277	4.774	2.74	5.31	108.3	-0.090564009
3.739	6.1	3.706	3.761	3.709	4.267	4.519	2.482	5.56	108.1	0
3.756	6	3.709	3.761	3.716	4.001	4.034	3.214	5.55	106.8	0
3.763	5.8	3.711	3.764	3.714	3.736	3.783	2.72	5.2	106.5	-0.063063607
3.767	6	3.714	3.766	3.721	3.474	3.294	2.949	4.91	105.7	-0.287703053
3.779	6	3.716	3.768	3.721	3.214	3.048	2.7	4.14	107.3	-0.579575317
3.802	5.8	3.718	3.773	3.721	3.206	3.271	2.451	3.5	111.5	-0.120719153
3.812	5.7	3.723	3.775	3.726	3.69	3.264	2.439	3.29	112.7	0.007363704
3.819	5.8	3.723	3.775	3.731	3.44	3.264	2.673	3.83	114.9	-0.085426012
3.829	5.7	3.726	3.78	3.733	3.432	3.249	3.407	4.17	115.7	-0.109039114
3.829	5.7	3.728	3.782	3.738	3.175	3.006	3.144	4.27	119.5	0.176146673
3.832	5.7	3.731	3.784	3.742	2.92	2.765	3.619	4.46	118.8	-0.06419389
3.832	5.6	3.733	3.786	3.738	2.913	2.759	3.144	4.55	119.7	0
3.845	5.6	3.735	3.791	3.745	2.906	2.978	3.611	4.8	122	0
3.852	5.5	3.74	3.791	3.754	3.137	2.978	3.819	4.87	123	0
3.865	5.6	3.742	3.793	3.761	3.129	2.972	4.763	5.04	125.2	0
3.877	5.3	3.747	3.793	3.773	3.358	2.74	5.19	5.06	127.9	-0.007417904
3.888	5.2	3.75	3.798	3.793	3.35	2.958	7.238	5.33	131.6	0.003226198
3.895	4.9	3.754	3.798	3.8	3.576	2.497	7.911	5.94	136.1	0.26609372
3.91	5	3.761	3.802	3.807	3.792	2.715	8.097	6.58	146.1	-0.001260532
3.91	4.9	3.77	3.807	3.818	4.718	3.161	8.721	7.09	148.8	-0.133745181
3.908	5	3.777	3.809	3.816	5.165	2.925	8.262	7.12	153.8	0.154702067
3.915	4.9	3.782	3.813	3.85	5.381	3.139	11.248	7.84	166.3	0.297817554
3.916	4.9	3.789	3.816	3.848	5.822	3.132	10.56	8.49	171.9	0.19361315
3.92	4.8	3.789	3.818	3.846	5.583	3.125	10.821	10.4	195.1	-0.146183909
3.918	4.8	3.807	3.822	3.854	7.138	3.111	10.961	10.5	202	0.08717143
3.927	4.8	3.811	3.829	3.863	7.105	3.766	10.863	10.78	195	-0.296106296
3.934	4.6	3.82	3.835	3.888	7.749	4.19	12.653	10.01	187.5	-0.40784335
3.939	4.8	3.826	3.839	3.906	7.932	4.621	13.324	10.03	192.1	0.322590726
3.937	4.9	3.835	3.844	3.916	8.564	4.601	12.278	9.95	206	-0.569264726
3.93	5.1	3.846	3.848	3.926	9.168	5.028	12.595	9.65	217.5	-0.025781799
3.926	5.2	3.857	3.854	3.938	9.531	5.219	13.103	8.97	239.3	0.245341978
3.927	5.1	3.867	3.863	3.938	9.657	5.617	11.998	9.35	233	0.672115432
3.924	5.1	3.873	3.869	3.965	9.593	6.023	14.91	10.51	229.4	0.503263158
3.931	5.1	3.884	3.882	3.983	10.171	6.826	13.327	11.31	216.9	0.113171094
3.93	5.4	3.892	3.892	3.995	10.31	7.631	14.651	11.93	226.9	0.229892064
3.93	5.5	3.898	3.902	4.013	10.92	8.426	16.689	12.92	249.9	-0.542571198
3.921	5.5	3.91	3.916	4.032	10.336	9.392	17.808	12.01	236.3	0.084548488
3.922	5.9	3.924	3.926	4.032	11.285	9.728	16.964	11.34	229.6	-0.272313687
3.918	6	3.932	3.936	4.038	11.192	10.06	15.004	10.06	228.6	-0.167601722
3.885	6.6	3.942	3.944	4.036	11.512	10.407	13	9.45	223.3	0.156489002
3.849	7.2	3.949	3.951	4.036	11.418	10.75	11.999	8.53	207.9	-0.359166408
3.836	8.1	3.957	3.957	4.045	11.111	10.898	11.888	7.13	203	0.084034186
3.812	8.1	3.963	3.967	4.05	10.621	11.212	11.235	6.24	199	-0.020475526
3.801	8.6	3.967	3.97	4.059	9.949	10.746	12.103	5.54	200.8	-0.208422965
3.802	8.8	3.97	3.976	4.067	9.701	10.682	10.27	5.49	198.9	0.062582165
3.8	9	3.972	3.98	4.076	8.855	9.812	9.243	5.22	192.5	0.184114167
3.807	8.8	3.98	3.985	4.083	8.786	9.345	8.809	5.55	189.9	0.321140727
3.817	8.6	3.989	3.989	4.091	9.106	8.701	7.823	6.1	201.3	-0.064342712
3.826	8.4	3.993	3.993	4.094	8.266	7.667	6.188	6.14	208.4	-0.211491067
3.839	8.4	4	3.998	4.096	7.608	7.227	6.354	6.24	205.8	0.093079123
3.843	8.4	4.006	4.004	4.094	7.369	6.795	5.657	5.82	197.3	-0.102522998
3.846	8.3	4.013	4.011	4.093	7.119	6.744	5.667	5.22	190.8	-0.084563119
3.858	8.2	4.018	4.016	4.094	6.886	6.514	5.834	5.2	188.3	0.04238025
3.873	7.9	4.022	4.024	4.099	6.478	6.657	5.453	4.87	188.7	0.086070646
3.882	7.7	4.024	4.029	4.101	6.085	6.241	5.094	4.77	193.7	-0.131139829
3.883	7.6	4.025	4.034	4.103	5.884	6.395	4.393	4.84	197.3	-0.148342654
3.889	7.7	4.027	4.038	4.106	5.684	6.184	3.863	4.82	203.2	-0.036059591
3.894	7.4	4.032	4.043	4.109	6.029	6.337	3.339	5.29	202.6	-0.021862279
3.893	7.6	4.038	4.047	4.113	5.809	6.128	2.99	5.48	210.9	-0.241651958
3.899	7.8	4.043	4.054	4.117	5.407	6.454	2.64	5.31	212.8	-0.042233598
3.906	7.8	4.048	4.059	4.126	5.562	6.604	3.118	5.29	204.9	-0.100736525
3.908	7.6	4.054	4.064	4.134	5.349	6.568	3.756	5.25	199.8	-0.078178653
3.909	7.7	4.059	4.069	4.135	5.32	6.534	4.082	5.02	194.3	-0.122372031
3.924	7.8	4.062	4.072	4.146	4.939	6.148	5.363	4.95	197.3	-0.321650858
3.934	7.8	4.067	4.076	4.154	4.913	5.946	5.984	4.65	201.9	-0.057472177
3.929	7.5	4.072	4.083	4.159	5.067	5.904	5.955	4.61	211.6	0.007361623
3.944	7.6	4.083	4.089	4.165	5.904	6.042	6.412	4.68	212.5	-0.13257195
3.956	7.4	4.088	4.094	4.168	6.23	6.01	6.557	4.69	219.2	-0.156599616
3.965	7.2	4.094	4.099	4.171	6.721	6.156	6.536	4.73	220.9	-0.143506063
3.973	7	4.098	4.104	4.177	6.52	6.124	6.823	5.35	215.5	-0.251640961
3.98	7.2	4.103	4.111	4.182	6.487	6.432	6.954	5.39	206.7	-0.279690505
3.982	6.9	4.108	4.114	4.188	6.454	6.062	7.073	5.42	203.5	-0.227463452
3.983	7	4.113	4.119	4.196	6.421	6.032	7.018	5.9	200.9	-0.176133053
3.988	6.8	4.116	4.124	4.2	6.226	6.002	6.664	6.14	201.9	-0.065528231
3.99	6.8	4.121	4.127	4.205	6.194	5.811	6.953	6.47	201.9	-0.200209844
3.991	6.8	4.127	4.132	4.212	6.497	5.952	6.582	6.51	209.4	-0.104292834
3.992	6.4	4.132	4.138	4.217	6.465	6.252	6.238	6.56	213.2	-0.119422652
3.979	6.4	4.138	4.145	4.228	6.592	6.211	6.941	6.7	219.1	-0.180844463
3.983	6.3	4.143	4.149	4.236	6.053	6.013	7.044	6.78	220.1	-0.100025096
4.001	6.3	4.149	4.156	4.244	6.181	6.141	7.599	6.79	228	-0.105825143
4.021	6.1	4.157	4.164	4.253	6.297	6.423	8.147	6.89	225.5	-0.024917684
4.025	6	4.167	4.17	4.254	6.899	6.547	7.673	7.36	232	-0.231612493
4.033	5.9	4.174	4.177	4.264	7.174	6.659	8.204	7.6	230	-0.051307502
4.033	6.2	4.182	4.184	4.268	7.446	6.943	8.016	7.81	229	-0.114141409
4.036	5.9	4.188	4.191	4.277	7.563	7.213	8.097	8.04	239.6	-0.091539012
4.039	6	4.197	4.2	4.288	8.142	7.63	8.751	8.45	244.1	-0.112593865
4.047	5.8	4.206	4.208	4.3	8.552	8.054	9.531	8.96	256.5	0.098826862
4.054	5.9	4.212	4.214	4.309	8.499	8.165	9.733	9.76	250.4	-0.005789775
4.06	6	4.218	4.22	4.317	8.607	8.115	10.093	10.03	250.3	0.099110211
4.053	5.9	4.227	4.227	4.328	8.847	8.211	9.981	10.07	259.5	0
4.059	5.9	4.237	4.237	4.333	9.387	8.754	9.781	10.06	270.9	-0.009137627
4.062	5.8	4.247	4.246	4.339	9.76	8.988	9.44	10.09	277.7	-0.022417355
4.051	5.8	4.257	4.253	4.349	9.971	8.921	9.621	10.01	276.9	-0.048726171
4.059	5.6	4.268	4.26	4.359	10.163	9.01	10.508	10.24	277.6	-0.071918467
4.059	5.7	4.279	4.267	4.376	10.505	8.944	11.167	10.29	281.3	0
4.057	5.7	4.29	4.275	4.387	10.841	9.17	11.872	10.47	277.8	-0.207635046
4.05	6	4.3	4.286	4.399	11.186	9.517	12.271	10.94	281.8	0.152618353
4.051	5.9	4.309	4.295	4.409	11.225	9.436	12.144	11.43	279.4	-0.149444569
4.057	6	4.32	4.304	4.424	11.397	9.639	12.365	13.77	278.1	0
4.056	5.9	4.331	4.315	4.438	11.861	10.121	12.848	13.18	283.1	-0.145131499
4.057	6	4.343	4.327	4.449	12.447	10.727	13.103	13.78	287.5	0
4.061	6.3	4.357	4.34	4.457	12.988	11.307	12.857	13.82	288	0.286870737
4.062	6.3	4.369	4.35	4.461	13.245	11.328	12.794	14.13	294.2	0.751487047
4.059	6.3	4.383	4.364	4.469	13.621	11.874	13.075	17.19	280.8	1.684183002
4.039	6.9	4.393	4.376	4.485	13.618	12.299	13.627	17.61	270.7	-3.159190594
4.013	7.5	4.403	4.383	4.496	13.476	12.342	13.72	10.98	263.5	-0.075228535
4.001	7.6	4.413	4.394	4.501	13.336	12.755	12.516	9.47	265.1	0
3.994	7.8	4.414	4.392	4.509	12.355	11.67	12.165	9.03	282	0.236644786
3.997	7.7	4.421	4.398	4.515	12.124	11.18	11.587	9.61	289.2	0.030056746
4.014	7.5	4.43	4.408	4.52	12.017	11.338	11.046	10.87	292.5	0.635758963
4.026	7.5	4.439	4.419	4.53	11.896	11.478	10.68	12.81	300.1	1.031610134
4.043	7.5	4.45	4.43	4.539	11.895	11.481	10.11	15.85	297.8	1.344299184
4.049	7.2	4.459	4.441	4.551	11.648	11.47	10.22	18.9	283.5	-1.249204117
4.043	7.5	4.468	4.447	4.561	11.15	10.744	10.455	19.08	276.2	0
4.038	7.4	4.477	4.453	4.564	10.789	10.291	10.305	15.93	275.7	0.01496472
4.044	7.4	4.484	4.459	4.57	10.086	9.462	10.019	14.7	275.9	1.224378087
4.038	7.2	4.49	4.466	4.572	9.655	9.015	8.635	15.72	274.5	0
4.045	7.5	4.496	4.475	4.573	9.342	9.179	7.618	18.52	271.8	0.937001216
4.05	7.5	4.505	4.484	4.577	9.255	8.968	7.585	19.1	265.8	0
4.057	7.2	4.516	4.498	4.581	10.233	10.561	7.222	19.04	276.9	-0.659673437
4.057	7.4	4.524	4.508	4.584	10.271	10.941	6.87	17.82	267.9	-0.041682273
4.051	7.6	4.534	4.52	4.588	10.405	11.167	6.841	15.87	262.7	0
4.043	7.9	4.537	4.523	4.594	9.778	10.403	6.366	15.08	256.3	-0.177416329
4.033	8.3	4.541	4.527	4.593	9.148	9.758	5.407	13.31	253.6	-0.231355554
4.022	8.5	4.544	4.533	4.593	8.537	9.113	4.238	12.37	250	0.343404667
4.002	8.6	4.548	4.536	4.595	7.934	8.847	3.39	13.22	256.8	0
4.021	8.9	4.551	4.541	4.595	7.338	8.798	3.077	14.78	248.7	0.426893814
4.014	9	4.551	4.542	4.603	6.658	8.324	3.363	14.68	246.4	-0.171380659
4.005	9.3	4.554	4.551	4.607	6.412	8.481	3.555	14.94	247.5	0
3.998	9.4	4.563	4.558	4.611	6.684	8.302	3.851	14.45	245.5	-0.196145983
3.994	9.6	4.575	4.565	4.612	6.936	8.126	3.538	14.15	239.4	0
3.991	9.8	4.58	4.572	4.615	6.351	7.403	3.424	12.59	241.8	-0.118294513
3.982	9.8	4.582	4.576	4.619	5.794	6.818	3.513	10.12	239.3	0.245384748
3.978	10.1	4.582	4.577	4.623	4.823	5.716	3.499	10.31	234.5	0
3.97	10.4	4.586	4.58	4.615	4.91	5.698	2.101	9.71	231.2	-0.507886276
3.967	10.8	4.585	4.578	4.616	4.38	5.059	2.301	9.2	226.6	-0.113696411
3.96	10.8	4.582	4.577	4.615	3.754	4.417	2.202	8.95	227.4	0.39762887
3.978	10.4	4.584	4.581	4.616	3.641	4.506	2.099	8.68	234.8	0
3.973	10.4	4.585	4.585	4.619	3.425	4.38	2.395	8.51	241.5	0.032088539
3.981	10.3	4.586	4.587	4.621	3.527	4.478	1.788	8.77	247.9	0.115249581
3.993	10.2	4.593	4.591	4.621	3.922	4.036	1.388	8.8	250.2	0
4	10.1	4.597	4.594	4.624	3.383	3.603	1.284	8.63	248.1	0.202452135
4.005	10.1	4.599	4.597	4.627	2.444	3.175	1.479	8.98	247.3	0
4.021	9.4	4.603	4.603	4.627	2.332	3.155	1.181	9.37	256.4	0.165857753
4.032	9.5	4.606	4.606	4.625	2.427	3.043	0.59	9.56	273.7	-0.257248395
4.047	9.2	4.609	4.61	4.628	2.726	3.339	0.49	9.45	266.7	0
4.055	8.8	4.613	4.615	4.635	2.715	3.527	1.961	9.48	266.4	-0.021567843
4.058	8.5	4.616	4.62	4.639	3.114	4.226	2.249	9.34	269.1	-0.064193679
4.063	8.3	4.619	4.623	4.642	3.717	4.624	2.735	9.47	277.8	0.033445693
4.083	8	4.626	4.63	4.643	4.201	4.899	2.732	9.56	280.8	0.040930228
4.088	7.8	4.631	4.633	4.642	4.587	4.782	2.339	9.59	280.1	0
4.093	7.8	4.634	4.637	4.642	4.777	4.966	2.142	9.91	288.2	0.125514477
4.099	7.7	4.638	4.642	4.644	4.454	5.043	2.335	10.29	285.7	0
4.103	7.4	4.64	4.645	4.642	4.243	5.124	1.847	10.32	291	-0.065998655
4.107	7.2	4.642	4.649	4.642	4.235	5.205	1.553	11.06	286.9	0
4.11	7.5	4.645	4.654	4.641	4.218	5.079	1.361	11.23	272	0.291421059
4.11	7.5	4.648	4.658	4.644	4.206	5.159	1.942	11.64	276.8	-0.078092721
4.109	7.3	4.651	4.662	4.644	4.194	5.139	1.648	11.3	267.1	0
4.108	7.4	4.655	4.665	4.644	4.177	5.02	0.966	9.99	266.7	-0.136153437
4.112	7.2	4.657	4.667	4.645	4.07	4.715	0.675	9.43	268.4	-0.333827776
4.113	7.3	4.659	4.671	4.645	3.964	4.795	0.289	8.38	257.2	-0.194780078
4.11	7.3	4.661	4.674	4.65	3.465	4.39	0.671	8.35	256.9	0
4.115	7.2	4.666	4.679	4.653	3.543	4.656	1.054	8.5	251.9	0.142150388
4.116	7.2	4.671	4.683	4.65	3.72	4.639	0.768	8.58	256.8	0.125024204
4.114	7.3	4.673	4.686	4.651	3.519	4.433	0.671	8.27	254.1	0
4.115	7.2	4.675	4.69	4.649	3.512	4.416	0.672	7.97	246.8	-0.154535774
4.115	7.4	4.677	4.692	4.642	3.599	4.308	0	7.53	242.6	0
4.109	7.4	4.679	4.695	4.653	3.4	4.105	1.247	7.88	237.6	0.15476987
4.113	7.1	4.681	4.699	4.659	3.298	4.09	1.432	7.9	233.1	0.019177202
4.117	7.1	4.683	4.7	4.663	3.196	3.893	1.905	7.92	229.4	0
4.113	7.1	4.687	4.705	4.659	3.184	3.969	1.432	7.99	230.1	0.077806782
4.117	7	4.691	4.71	4.645	3.453	4.323	0	8.05	233.4	-0.025715352
4.127	7	4.696	4.713	4.633	3.721	4.217	-1.257	8.27	236.7	-0.119738279
4.132	6.7	4.7	4.718	4.628	3.897	4.384	-2.223	8.14	231.6	0
4.124	7.2	4.698	4.72	4.633	3.148	4.093	-2.022	7.86	223.6	0.078098764
4.118	7.2	4.692	4.723	4.636	2.131	3.99	-1.444	7.48	216.1	0
4.119	7.1	4.689	4.727	4.628	1.576	4.067	-2.319	6.99	214.7	0.169514768
4.12	7.2	4.691	4.728	4.632	1.665	3.876	-1.737	6.85	215.1	0.201611791
4.117	7.2	4.695	4.731	4.634	1.752	3.866	-0.871	6.92	220.3	0
4.123	7	4.696	4.734	4.64	1.657	3.943	-1.344	6.56	220.6	-0.417352846
4.121	6.9	4.697	4.738	4.639	1.563	3.929	-2.011	6.17	209	-0.181512618
4.123	7	4.7	4.741	4.641	1.742	4.097	-2.29	5.89	219.3	0.138579172
4.128	7	4.702	4.745	4.645	1.555	3.992	-1.336	5.85	226.16	0
4.133	6.9	4.704	4.748	4.648	1.276	3.711	0.288	6.04	228.24	0.00561339
4.142	6.6	4.708	4.75	4.649	1.18	3.701	1.64	6.91	228.33	-0.012118347
4.139	6.6	4.713	4.753	4.655	1.356	3.512	2.7	6.43	229.45	0
4.151	6.6	4.717	4.755	4.656	1.896	3.503	2.308	6.1	225.89	0.026663062
4.153	6.6	4.72	4.759	4.659	2.802	3.58	2.301	6.13	227.91	0.166074512
4.158	6.3	4.725	4.765	4.661	3.614	3.823	3.27	6.37	239.5	0
4.165	6.3	4.727	4.768	4.662	3.604	3.987	3.068	6.85	249.2	0.196012477
4.17	6.2	4.732	4.77	4.665	3.679	3.892	3.157	6.73	251.87	0
4.176	6.1	4.734	4.773	4.663	3.852	3.878	2.387	6.58	252.78	-0.033676874
4.183	6	4.739	4.777	4.663	4.199	3.865	2.483	6.73	254.54	0.025147684
4.186	5.9	4.742	4.781	4.662	4.184	3.935	2.101	7.22	255.08	-0.12059017
4.201	6	4.745	4.786	4.667	4.264	4.089	2.185	7.29	253.85	0
4.206	5.8	4.748	4.788	4.666	4.429	4.079	1.804	6.69	254.4	-0.283571372
4.211	5.7	4.75	4.791	4.669	4.241	4.068	1.99	6.77	258.21	0.033901413
4.211	5.7	4.754	4.795	4.673	4.046	4.224	1.792	6.83	258.89	0
4.216	5.7	4.755	4.797	4.675	3.86	4.213	1.883	6.58	257	-0.052267004
4.218	5.7	4.758	4.802	4.677	3.761	4.281	1.878	6.58	261.2	0.256883836
4.223	5.4	4.764	4.806	4.686	3.915	4.174	2.522	6.87	263.5	0
4.223	5.6	4.766	4.81	4.69	3.905	4.16	2.702	7.09	272.55	0.103807591
4.225	5.4	4.771	4.814	4.691	3.888	4.397	2.602	7.51	283.75	0.131939671
4.227	5.4	4.775	4.817	4.693	4.047	4.383	2.974	7.75	276.62	0
4.232	5.6	4.779	4.82	4.697	4.03	4.368	3.34	8.01	276.53	-0.150836469
4.228	5.4	4.783	4.826	4.7	4.1	4.511	3.893	8.19	271.88	-0.00783636
4.234	5.4	4.787	4.83	4.71	4.173	4.409	4.323	8.3	274.53	0
4.236	5.3	4.79	4.833	4.718	4.158	4.478	5.134	8.35	274.19	0.018393078
4.24	5.3	4.793	4.836	4.721	4.317	4.546	5.209	8.76	284.35	0.563388225
4.242	5.4	4.797	4.84	4.728	4.385	4.528	5.544	9.12	286.73	0
4.238	5.2	4.801	4.843	4.736	4.542	4.596	6.15	9.36	287.21	0.014485966
4.241	5	4.806	4.847	4.736	4.777	4.577	5.871	9.85	285.12	-0.083116458
4.24	5.2	4.813	4.85	4.734	4.912	4.399	4.861	9.84	282.6	0
4.233	5.2	4.818	4.854	4.731	5.142	4.463	4.141	9.81	280.13	0.035297977
4.234	5.3	4.821	4.858	4.736	5.04	4.445	4.485	9.53	282.58	0
4.225	5.2	4.824	4.861	4.741	4.939	4.431	4.827	9.24	277.22	-0.132521681
4.234	5.2	4.824	4.864	4.743	4.518	4.34	4.635	8.99	278.02	0.100592789
4.231	5.3	4.827	4.867	4.749	4.34	4.085	4.879	9.02	274.59	0
4.23	5.3	4.832	4.872	4.768	4.485	4.223	5.771	8.84	270.32	0.039284642
4.233	5.4	4.835	4.876	4.767	4.55	4.286	4.968	8.55	265.6	0.106571784
4.24	5.4	4.839	4.88	4.766	4.535	4.349	4.526	8.45	260.6	-0.165480375
4.234	5.4	4.848	4.884	4.766	5.067	4.332	3.731	8.23	260.41	0
4.243	5.3	4.852	4.888	4.766	5.129	4.469	3.024	8.24	264	0.121559116
4.248	5.2	4.857	4.894	4.767	5.105	4.677	3.109	8.28	271.3	0.041341308
4.247	5.4	4.859	4.898	4.77	4.604	4.737	3.539	8.26	273.06	0
4.249	5.4	4.861	4.901	4.781	4.273	4.645	4.988	8.18	278.44	0.027731911
4.251	5.2	4.867	4.906	4.793	4.568	4.775	5.711	8.29	277.49	0
4.25	5.5	4.871	4.911	4.803	4.707	4.982	6.175	8.15	276.55	-0.173829658
4.252	5.7	4.88	4.917	4.809	5.546	5.338	6.574	8.13	271.1	0.089957072
4.254	5.9	4.887	4.921	4.804	5.987	5.395	5.475	8.2	273.09	0
4.247	5.9	4.893	4.924	4.809	6.184	5.221	4.079	8.11	263.07	-0.218778025
4.235	6.2	4.896	4.927	4.802	6.011	5.129	3.509	7.81	261.38	-0.074210339
4.228	6.3	4.899	4.932	4.798	6.067	5.183	3.183	7.31	258.13	0.006175882
4.223	6.4	4.903	4.938	4.798	5.493	5.451	3.268	6.91	255.69	0
4.217	6.6	4.904	4.943	4.801	5.176	5.498	3.43	6.25	255.97	-0.267943147
4.212	6.8	4.904	4.945	4.799	4.709	5.111	3.18	6.12	255.13	0.281970868
4.214	6.7	4.906	4.948	4.797	4.698	5.021	2.678	5.91	253.76	0
4.224	6.9	4.91	4.951	4.798	4.912	5.006	1.746	5.78	248.28	0.151596978
4.233	6.9	4.913	4.954	4.8	4.589	4.84	0.661	5.9	243.29	0
4.233	6.8	4.914	4.958	4.803	4.275	4.675	0	5.82	246.83	0.107704491
4.234	6.9	4.917	4.962	4.807	3.729	4.509	-0.163	5.66	241.25	0.002811087
4.243	6.9	4.92	4.966	4.806	3.34	4.493	0.246	5.45	244.53	0
4.241	7	4.921	4.968	4.804	2.809	4.338	-0.491	5.21	242.12	0.029203404
4.24	7	4.926	4.971	4.806	3.02	4.395	0.41	4.81	242.54	-0.443387
4.236	7.3	4.929	4.975	4.807	2.937	4.307	0.903	4.43	238.24	-0.092107368
4.23	7.3	4.929	4.977	4.808	2.638	3.936	0.984	4.03	237.11	0
4.238	7.4	4.932	4.979	4.811	2.78	3.642	1.063	4.06	237.78	0.137085854
4.246	7.4	4.935	4.983	4.815	3.14	3.771	1.634	3.98	241.56	0.039065821
4.253	7.4	4.937	4.986	4.815	3.133	3.761	1.8	3.73	244.79	0
4.256	7.6	4.939	4.989	4.815	2.979	3.819	1.716	3.82	245.51	0.034523023
4.257	7.8	4.942	4.991	4.818	2.97	3.67	1.795	3.76	249.52	0
4.265	7.7	4.945	4.995	4.822	3.108	3.657	1.869	3.25	245.35	-0.107366801
4.26	7.6	4.947	4.997	4.821	3.028	3.439	1.379	3.3	243.58	-0.06380571
4.262	7.6	4.949	4.998	4.822	2.949	3.225	1.542	3.22	244.48	0
4.27	7.3	4.954	5.003	4.824	3.227	3.488	1.948	3.1	239.96	-0.206028487
4.273	7.4	4.957	5.005	4.826	3.073	3.409	1.943	3.09	238.63	0.001768603
4.274	7.4	4.958	5.008	4.828	2.924	3.33	2.102	2.92	235.27	-0.073713192
4.279	7.3	4.961	5.011	4.834	3.202	3.388	2.579	3.02	237.97	0
4.282	7.1	4.964	5.015	4.834	3.195	3.514	2.253	3.03	238.51	-0.027428187
4.282	7	4.965	5.016	4.83	2.975	3.303	1.448	3.07	238.58	-0.061643758
4.285	7.1	4.968	5.02	4.829	3.108	3.427	1.449	2.96	235.76	0
4.281	7.1	4.971	5.023	4.819	3.17	3.349	0.404	3	233.81	0.107277038
4.283	7	4.972	5.025	4.821	2.954	3.343	0.323	3.04	233.26	0
4.287	6.9	4.973	5.026	4.822	2.807	3.135	0	3.06	234.83	-0.054335259
4.287	6.8	4.975	5.029	4.824	2.801	3.259	0.241	3.03	236.1	-0.063347761
4.292	6.7	4.977	5.03	4.824	2.726	3.19	0.161	3.09	234.74	-0.001100925
4.299	6.8	4.981	5.033	4.827	2.715	3.045	0.321	2.99	238.96	0
4.303	6.6	4.984	5.036	4.828	2.708	3.102	0.24	3.02	243.06	-0.132644126
4.308	6.5	4.986	5.039	4.829	2.772	3.093	0.08	2.96	245.44	-0.190179464
4.312	6.6	4.986	5.04	4.829	2.421	2.889	-0.478	3.05	249.47	0
4.313	6.6	4.988	5.042	4.829	2.485	2.751	-0.478	3.25	253.27	0.133124158
4.323	6.5	4.991	5.045	4.83	2.617	2.94	0	3.34	252.64	0.119057446
4.328	6.4	4.992	5.047	4.834	2.337	2.672	0.478	3.56	255.99	0
4.334	6.1	4.994	5.049	4.838	2.263	2.665	1.839	4.01	256.71	0.328882183
4.34	6.1	4.997	5.052	4.835	2.464	2.788	1.44	4.25	253.77	0
4.342	6.1	5	5.054	4.832	2.663	2.848	1.041	4.26	261.97	-0.129324037
4.347	6	5.004	5.057	4.837	2.859	2.775	1.357	4.47	266.62	0.428837667
4.35	5.9	5.006	5.059	4.841	2.922	2.964	1.753	4.73	267.9	-0.000875298
4.358	5.8	5.007	5.061	4.843	2.576	2.828	1.669	4.76	270.75	0
4.364	5.6	5.009	5.064	4.846	2.569	2.756	1.745	5.29	276.73	0.606081206
4.375	5.5	5.011	5.064	4.847	2.564	2.559	1.822	5.45	285.98	-0.216316479
4.378	5.6	5.014	5.069	4.85	2.83	2.871	2.057	5.53	288.96	0
4.378	5.4	5.017	5.071	4.85	2.823	2.928	2.135	5.92	284.61	0.442093688
4.379	5.4	5.019	5.075	4.85	2.749	2.919	2.055	5.98	282.99	-0.039166574
4.379	5.8	5.023	5.078	4.852	3.077	3.102	1.813	6.05	288.59	0
4.381	5.6	5.025	5.08	4.851	3.071	3.032	1.338	6.01	290.47	0.07450555
4.384	5.6	5.027	5.082	4.853	2.997	2.961	1.732	6	298.06	0
4.38	5.7	5.028	5.084	4.855	2.791	2.955	2.284	5.85	291.25	-0.11254483
4.394	5.7	5.03	5.086	4.857	2.584	2.948	2.041	5.74	292.56	0.047108877
4.398	5.6	5.031	5.089	4.862	2.513	2.94	2.11	5.8	292.96	0.00511442
4.396	5.5	5.034	5.092	4.865	2.707	3.058	2.182	5.76	294.17	0
4.398	5.6	5.035	5.094	4.865	2.57	2.989	1.946	5.8	295.45	0.005707093
4.403	5.6	5.036	5.094	4.871	2.5	2.987	2.404	5.6	289.1	-0.215431548
4.396	5.6	5.041	5.098	4.874	2.752	2.913	2.475	5.56	285.89	-0.162970634
4.412	5.5	5.043	5.1	4.874	2.681	2.845	2.397	5.22	285.88	0
4.411	5.5	5.047	5.102	4.877	2.804	2.775	2.702	5.31	289.33	0.049199189
4.418	5.6	5.05	5.104	4.877	2.793	2.585	2.469	5.22	299.99	0
4.425	5.6	5.052	5.106	4.88	2.788	2.641	2.852	5.24	309.62	-0.070213904
4.434	5.3	5.054	5.108	4.881	2.782	2.634	2.772	5.27	308.35	0
4.433	5.5	5.056	5.11	4.886	2.843	2.629	3.068	5.4	311.88	-0.064777548
4.439	5.1	5.058	5.112	4.887	2.773	2.563	2.91	5.22	312.62	-0.045025053
4.444	5.2	5.061	5.115	4.89	2.96	2.617	2.746	5.3	304.17	-0.029474178
4.444	5.2	5.064	5.117	4.89	3.016	2.489	2.513	5.24	289.64	0
4.453	5.4	5.067	5.119	4.888	3.201	2.544	2.287	5.31	289.15	-0.005928442
4.459	5.4	5.07	5.12	4.887	3.323	2.602	1.596	5.29	288.22	-0.027978029
];

% ln(IP)	UE	Log(CPI)	Log (Core CPI)	Log(PPI)	PiCPI	PiCCPI  PiPPI	EFFR	COMP  R&Rsh
IP=Z(:,1);
UE=Z(:,2);
CPI=Z(:,3);
CPIc=Z(:,4);
PPI=Z(:,5);
PiCPI=Z(:,6);
PiCPIc=Z(:,7);
PiPPI=Z(:,8);
FFR=Z(:,9);
PCOM=Z(:,10);
uRR=Z(:,11);
clear Z