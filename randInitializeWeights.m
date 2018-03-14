function W = randInitializeWeights(L_in, L_out)
    W = zeros(L_out, L_in);
    epsilon_init = sqrt(6) / sqrt(L_in + L_out);
    W = rand(L_out, L_in) * 2 * epsilon_init - epsilon_init;
    W = W';