str(titanic)

# 2 - Use ggplot() for the first instruction
ggplot(titanic, aes(x = Pclass, fill = Sex)) +
  geom_bar(position = "dodge")

# 3 - Plot 2, add facet_grid() layer
ggplot(titanic, aes(x = Pclass, fill = Sex)) +
  facet_grid(. ~ Survived) + geom_bar(position = "dodge")

# 4 - Define an object for position jitterdodge, to use below
posn.jd <- position_jitterdodge(0.5, 0, 0.6)

# 5 - Plot 3, but use the position object from instruction 4
ggplot(titanic, aes(x = Pclass, y = Age, color = Sex)) +
  facet_grid(. ~ Survived) + geom_point(size = 3, alpha = 0.5, position = posn.jd)
