load('Lab4_Data.mat');

figure(1)
plot(xspeech)
title('xspeech');

figure(2)
MagSpect(hChannel)
title('hChannel frequency domain');

figure(3)
MagSpect(hLPF2000)
title('hLPF2000 frequency domain');

figure(4)
MagSpect(hLPF2500)
title('hLPF2500 frequency domain');

%% Encoder
conv1 = conv(xspeech, hLPF2000);

figure(5)
MagSpect(conv1)
title('Convolution of xspeech, hLPF2000');
carrier = osc(6000,80710,32000);

figure(6)
plot(carrier)
title('Carrier Signal');
encoding = conv1.*carrier;

figure(7)
MagSpect(encoding)
title('Encoded Signal Frequency Domain');
Output = conv(encoding, hChannel);

figure(8)
MagSpect(Output)
title('Encoded Signal Frequency Domain');

%% Decoder
carrier2 = osc(6000,81520,32000);

figure(9)
plot(carrier2)
title('Carrier Signal #2');
decoding = Output.*carrier2;

figure(10)
MagSpect(decoding)
title('Decoded Signal Frequency Domain');
recover_xspeech = conv(decoding, hLPF2500);

figure(11)
plot(recover_xspeech)
title('Decoded Signal');

figure(12)
MagSpect(recover_xspeech)
sound(recover_xspeech,32000)
title('Decoded Signal Frequency Domain');
