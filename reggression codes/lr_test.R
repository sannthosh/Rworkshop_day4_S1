library(ggplot2)
data1 = read.csv("test.csv")

View(data1)

ggplot() +
  geom_point(aes(x = data1$verbal, y = data1$maths),
             colour = 'red') +
  ggtitle('Test') +
  xlab('Verbal') +
  ylab('maths')

lr1 = lm(formula = maths ~ verbal,
         data = data1)
summary(lr1)

ggplot() +
  geom_point(aes(x = data1$verbal, y = data1$maths),
             colour = 'red')+
  geom_line(aes(x = data1$verbal, y = predict(lr1, newdata = data1)),
            colour = 'blue') +
  ggtitle('Test') +
  xlab('Verbal') +
  ylab('maths')
