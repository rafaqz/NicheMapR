% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DEB.R
\name{DEB}
\alias{DEB}
\title{Dynamic Energy Budget model}
\usage{
DEB(step = 1/24, z = 7.997, del_M = 0.242, F_m = 13290 * step,
  kap_X = 0.85, v = 0.065 * step, kap = 0.886, p_M = 32 * step,
  E_G = 7767, kap_R = 0.95, k_J = 0.002 * step, E_Hb = 73590,
  E_Hj = E_Hb, E_Hp = 186500, h_a = 2.16e-11/(step^2), s_G = 0.01,
  T_REF = 20, TA = 8085, TAL = 18721, TAH = 9 + 4, TL = 288,
  TH = 315, E_0 = 1040000, f = 1, E_sm = 1116, K = 1,
  andens_deb = 1, d_V = 0.3, d_E = 0.3, d_Egg = 0.3,
  mu_X = 525000, mu_E = 585000, mu_V = 5e+05, mu_P = 480000,
  kap_X_P = 0.1, n_X = c(1, 1.8, 0.5, 0.15), n_E = c(1, 1.8, 0.5,
  0.15), n_V = c(1, 1.8, 0.5, 0.15), n_P = c(1, 1.8, 0.5, 0.15),
  n_M_nitro = c(1, 4/5, 3/5, 4/5), clutchsize = 2,
  clutch_ab = c(0.085, 0.7), viviparous = 0, minclutch = 0,
  batch = 1, lambda = 1/2, VTMIN = 26, VTMAX = 39, ma = 1e-04,
  mi = 0, mh = 0.5, arrhenius = matrix(data = matrix(data = c(rep(TA,
  8), rep(TAL, 8), rep(TAH, 8), rep(TL, 8), rep(TH, 8)), nrow = 8, ncol =
  5), nrow = 8, ncol = 5), acthr = 1, X = 10, E_pres = 6011.93,
  V_pres = 3.9752^3, E_H_pres = 73592, q_pres = 0, hs_pres = 0,
  surviv_pres = 1, Es_pres = 0, cumrepro = 0, cumbatch = 0,
  p_B_past = 0, stage = 1, breeding = 0, pregnant = 0, Tb = 33,
  fdry = 0.3)
}
\arguments{
\item{step}{= 1/24, step size (days)}

\item{z}{= 7.997, Zoom factor (cm)}

\item{del_M}{=  0.242, Shape coefficient (-)}

\item{F_m}{= 13290*step, Surface area-specific maximum feeding rate J/cm2/h}

\item{kap_X}{= 0.85, Digestive efficiency (decimal \%)}

\item{v}{= 0.065*step, Energy conductance (cm/h)}

\item{kap}{= 0.886, fraction of mobilised reserve allocated to soma}

\item{p_M}{= 32*step, Volume-specific somatic maintenance (J/cm3/h)}

\item{E_G}{= 7767, Cost of structure (J/cm3)}

\item{kap_R}{= 0.95, Fraction of reproduction energy fixed in eggs}

\item{k_J}{= 0.002*step, Maturity maintenance rate coefficient (1/h)}

\item{E_Hb}{= 7.359e+04, Maturity at birth (J)}

\item{E_Hj}{= E_Hb, Maturity at metamorphosis (J)}

\item{E_Hp}{= 1.865e+05, Maturity at puberty}

\item{h_a}{= 2.16e-11*(step^2), Weibull ageing acceleration (1/h2)}

\item{s_G}{= 0.01, Gompertz stress coefficient (-)}

\item{T_REF}{= 20, Reference temperature for rate correction (deg C)}

\item{TA}{= 8085 Arhhenius temperature}

\item{TAL}{= 18721, Arrhenius temperature for decrease below lower boundary of tolerance range \code{TL}}

\item{TAH}{= 90000, Arrhenius temperature for decrease above upper boundary of tolerance range \code{TH}}

\item{TL}{= 288, Lower boundary (K) of temperature tolerance range for Arrhenius thermal response}

\item{TH}{= 315, Upper boundary (K) of temperature tolerance range for Arrhenius thermal response}

\item{E_0}{= 1.04e+06, Energy content of the egg (derived from core parameters) (J)}

\item{f}{= 1, functional response (-), usually kept at 1 because gut model controls food availability such that f=0 when gut empty}

\item{E_sm}{= 1116, Maximum volume-specific energy density of stomach (J/cm3)}

\item{K}{= 500, Half saturation constant (#/cm2)}

\item{andens_deb}{= 1, Animal density (g/cm3)}

\item{d_V}{= 0.3, Dry mass fraction of structure}

\item{d_E}{= 0.3, Dry mass fraction of reserve}

\item{d_Egg}{= 0.3, Dry mass fraction of egg}

\item{mu_X}{= 525000, Molar Gibbs energy (chemical potential) of food (J/mol)}

\item{mu_E}{= 585000, Molar Gibbs energy (chemical potential) of reserve (J/mol)}

\item{mu_V}{= 500000, Molar Gibbs energy (chemical potential) of structure (J/mol)}

\item{mu_P}{= 480000, Molar Gibbs energy (chemical potential) of faeces (J/mol)}

\item{kap_X_P}{= 0.1, Faecation efficiency of food to faeces (-)}

\item{n_X}{= c(1,1.8,0.5,.15), Chem. indices of C, O, H and N in food}

\item{n_E}{= c(1,1.8,0.5,.15), Chem. indices of C, O, H and N in reserve}

\item{n_V}{= c(1,1.8,0.5,.15), Chem. indices of C, O, H and N in structure}

\item{n_P}{= c(1,1.8,0.5,.15), Chem. indices of C, O, H and N in faeces}

\item{n_M_nitro}{= c(1,4/5,3/5,4/5), Chem. indices of C, O, H and N in nitrogenous waste}

\item{clutchsize}{= 2, Clutch size (#), overridden by \code{clutch_ab}}

\item{clutch_ab}{= c(0,0), paramters for relationship between length (cm) and clutch size: clutch size = a*SVL-b, make a and b zero if fixed clutch size}

\item{viviparous}{= 0, Viviparous reproduction? 1=yes, 0=no (if yes, animal will be held in adult-sided female's body for duration of development and will experience her body temperature}

\item{minclutch}{= 0, Minimum clutch size if not enough in reproduction buffer for clutch size predicted by \code{clutch_ab} - if zero, will not operate}

\item{batch}{= 1, Invoke Pequerie et al.'s batch laying model?}

\item{lambda}{= 1/2}

\item{VTMIN}{= 26, Voluntary thermal maximum, degrees C, controls whether repro event can occur at a given time}

\item{VTMAX}{= 39, Voluntary thermal maximum, degrees C, controls whether repro event can occur at a given time}

\item{arrhenius}{= matrix(data = matrix(data = c(rep(TA,8),rep(TAL,8),rep(TAH,8),rep(TL,8),rep(TH,8)), nrow = 8, ncol = 5), nrow = 8, ncol = 5), Stage-specific 5-parameter Arrhenius thermal response for DEB model (TA,TAL,TAH,TL,TH)}

\item{acthr}{= 1}

\item{X}{= 11, Food density (J/cm2)}

\item{E_pres}{= 6011.93}

\item{V_pres}{= 3.9752^3}

\item{E_H_pres}{= 73592}

\item{q_pres}{=0}

\item{hs_pres}{=0}

\item{surviv_pres}{= 1}

\item{Es_pres}{= 0}

\item{cumrepro}{= 0}

\item{cumbatch}{= 0}

\item{p_B_past}{= 0}

\item{stage}{= 0, Initial stage (0=embryo, 1=juvenile, 2=mature but not yet reproducing, 3=beyond first reproduction)}

\item{breeding}{= 0}

\item{pregnant}{= 0}

\item{Tb}{= 33}

\item{fdry}{= 0.3, Dry mass fraction of food}

\item{X}{= 11}

\item{stage}{= 1}
}
\value{
E_pres

V_pres

E_H_pres

q_pres

hs_pres

surviv_pres

Es_pres

cumrepro

cumbatch

p_B_past

O2FLUX

CO2FLUX

MLO2

GH2OMET

DEBQMET

DRYFOOD,

FAECES

NWASTE

wetgonad

wetstorage

wetfood

wetmass

gutfreemass

gutfull

fecundity

clutches
}
\description{
Implementation of the Standarad Dynamic Energy Budget model of Kooijman
Note does not do a proper integration, i.e. rate of change is the difference between two fixed time periods
which is ok as long as the timestep is very small relative to the dynamics - hourly time steps or shorter
are ok for long-lived (months to years) animals
Michael Kearney Dec 2015
}
\examples{
# simulate growth and reproduction at different constant body temperatures at constant food

n<-3000 # time steps
step<-1 # step size (days)

Tbs=seq(25,35,2.5) # sequence of body temperatures to use

for(j in 1:length(Tbs)){
debout<-matrix(data = 0, nrow = n, ncol=27)
deb.names<-c("E_pres","V_pres","E_H_pres","q_pres","hs_pres","surviv_pres","Es_pres","cumrepro","cumbatch","p_B_past","O2FLUX","CO2FLUX","MLO2","GH2OMET","DEBQMET","DRYFOOD","FAECES","NWASTE","wetgonad","wetstorage","wetfood","wetmass","gutfreemass","gutfull","fecundity","clutches","potfreemass")
colnames(debout)<-deb.names

# initialise
debout[1,]<-DEB(Tb = Tbs[j], step = step)

for(i in 2:n){
debout[i,]<-DEB(Tb = Tbs[j], breeding = 1, step = step,E_pres=debout[(i-1),1],V_pres=debout[(i-1),2],E_H_pres=debout[(i-1),3],q_pres=debout[(i-1),4],hs_pres=debout[(i-1),5],surviv_pres=debout[(i-1),6],Es_pres=debout[(i-1),7],cumrepro=debout[(i-1),8],cumbatch=debout[(i-1),9],p_B_past=debout[(i-1),10])
}

if(j==1){
  plot((seq(1,n)/365),debout[,23],ylim=c(100,1500),type='l',xlab='years',ylab='wet mass, g', col=j)
}else{
  points((seq(1,n)/365),debout[,23],ylim=c(100,1500),type='l',xlab='years',ylab='wet mass, g',col=j)
}

} #end loop through body temperatures



}
