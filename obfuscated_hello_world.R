####################################################################################################
#
# TITLE:       Obfuscated Hello World
#
# DESCRIPTION: Extracts "Hello World!" from a polynomial. The polynomial can be viewed here:
#              http://www.wolframalpha.com/input/?i=55920+-+163635.629978355*x+%2B+196773.744702381*x%5E2+-+130574.01542328*x%5E3+%2B+++53823.0885774912*x%5E4+-+14611.7727375441*x%5E5+%2B+2686.31185185185*x%5E6+-+++336.552189153439*x%5E7+%2B+28.3069527116402*x%5E8+-+1.52900
#
#              Code was generated via create_polynomial_code.R
#
# AUTHOR:      Paul Foster
#
####################################################################################################

if (!require('pacman'))
    install.packages('pacman')

pacman::p_load('magrittr',
               'polynom')

polynomial(coef=c(55920,
                  -163635.629978355,
                  196773.744702381,
                  -130574.01542328,
                  53823.0885774912,
                  -14611.7727375441,
                  2686.31185185185,
                  -336.552189153439,
                  28.3069527116402,
                  -1.52900958994709,
                  0.0479155643738977,
                  -0.000662077120410454)) %>%
    predict(seq_len(12)) %>%
    round %>%
    as.raw %>%
    rawToChar %>%
    print
