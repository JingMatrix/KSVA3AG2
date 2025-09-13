
# Simulation de trajectoires de moyennes empiriques
N = 7
n_max=1000
param_n = 8
cible = 3
data_1=matrix(rbinom(N*n_max,param_n,cible/param_n),n_max,N)
data_emp_means=matrix(0,n_max,N)
for(i in 1:N) data_emp_means[,i]=cumsum(data_1[,i])/(1:n_max)
ts.plot(data_emp_means, 
        main="Exemples de trajectoires des moyennes empiriques successives
pour des échantillons de la loi binomiale B(8,3/8)",
        col=2:(N+1),
        xlab="n (échelle logarithmique)",
        log = "x"
        )
abline(h=cible, col=1, lty="dashed")
dev.print(device = png, file = "Rplot_trajectoires_moyenne_empirique.png",
          width = 600)

