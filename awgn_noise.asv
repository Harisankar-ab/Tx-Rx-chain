     function y = awgn_noise(x,SNR_dB)

    rng('default');
    L=length(x);
    SNR = 10^(SNR_dB/10);
    Esym = sum(abs(x).^2)/(L);
    NO = Esym/SNR;
    if(isreal(x))
        noiseSigma = sqrt(NO);
        n = noiseSigma*randn(1,L);
    else
        noiseSigma = sqrt(NO/2);
        n = noiseSigma*(randn(1,L)+1i*randn(1,L));
    end
    y = x + n;
end

    