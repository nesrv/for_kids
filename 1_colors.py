import pygame
import random

pygame.init()
screen = pygame.display.set_mode((800, 600))
pygame.display.set_caption("Рандомный цвет фона")
clock = pygame.time.Clock()

running = True
while running:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False
    
    # Рандомный цвет фона
    r = random.randint(0, 255)
    g = random.randint(0, 255)
    b = random.randint(0, 255)
    
    screen.fill((r, g, b))
    pygame.display.flip()
    clock.tick(10)  # Медленнее для видимости

# pygame.quit().display.update()
# clock.tick(100)