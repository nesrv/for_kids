import sys, pygame, time
from pygame.locals import *

# pygame.init()

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
        if e.type == KEYUP and e.key == K_ESCAPE:
            ok = 0
            break
        if e.type == QUIT:
            pygame.quit()
            sys.exit()
    S.blit(img, (0, 0))
    for i in range(len(blocks)):
        pygame.draw.rect(S, 'yellow', blocks[i])
    hit = ball.collidelist(blocks)
    if hit >= 0:
        blocks.pop(hit)
    pygame.draw.rect(S, 'red', platform)
    pygame.draw.circle(S, 'green', ball.center, 20)
    ball.x += dx
    ball.y += dy
    if ball.left < 0 or ball.right > W:
        dx = - dx
    if ball.top < 0 or ball.bottom > H:
        dy = -dy
    keys = pygame.key.get_pressed()
    if keys[pygame.K_LEFT] and platform.left > 0:
        platform.left -= speedP
    if keys[pygame.K_RIGHT] and platform.right < W:
        platform.left += speedP
    if ball.colliderect(platform) and dy > 0:
        dy = - dy
    x += 1
    y += 1

    pygame.display.update()
    clock.tick(100)
    # time.sleep(0.01)
