import sys, pygame, time
from pygame.locals import *


W = 800
H = 600
S = pygame.display.set_mode((W, H), 1, 32)
pygame.display.set_caption('Арканоид')

platform = pygame.Rect((W // 2, H - 50, 200, 30))
ball = pygame.Rect(W // 2, H // 2, 20, 20)
dx, dy = 5, -5
clock = pygame.time.Clock()

img = pygame.image.load('1.png').convert()
circle = pygame.draw.circle(S, 'GREEN', (200, 200), 20)
ok = 1
x = 200
y = 200
speedP = 10
blocks = []
for j in range(4):
    for i in range(6):
        b = pygame.Rect(10 + 120 * i, 30 + 60 * j, 100, 50)
        blocks.append(b)


while ok:
    for e in pygame.event.get():   
        if e.type == QUIT:
            pygame.quit()
            sys.exit()
    S.blit(img, (0, 0))
    for i in range(len(blocks)):
        pygame.draw.rect(S, 'yellow', blocks[i])
  

    pygame.display.update()
    clock.tick(100)