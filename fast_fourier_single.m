function ret_val = fast_fourier_single (in_val,f)
    if (length(in_val) == 1)
        ret_val = in_val;
    else
        evenFFT = fast_fourier(in_val(2:2:end),f);
        oddFFT = fast_fourier(in_val(1:2:end),f);
        twiddle = exp(-1i*pi*f/length(in_val)/2);
        ret_val = evenFFT + oddFFT*twiddle;
    end
end
