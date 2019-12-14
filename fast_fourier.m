function ret_val = fast_fourier (in_val)
    for f = (1:length(in_val)-1)
        ret_val(f) = fast_fourier_single(in_val,f);
    end
end
