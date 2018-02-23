function [ hex_string ] = hexSignAndMagnitude( input )
    if (size(input, 2) ~= 1)
        error('the input matrix should be [Mx1]');
    end
    bin_string = bin(abs(input));
    bin_string(input < 0, 1) = '1';
    hex_string = dec2hex(bin2dec(bin_string), 4);
end

