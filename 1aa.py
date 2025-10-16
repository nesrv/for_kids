import pygame
import sys

# Инициализация pygame
pygame.init()

# Создание окна
screen = pygame.display.set_mode((800, 600))
pygame.display.set_caption("Простой урок pygame")

# Цвета
WHITE = (255, 255, 255)
RED = (255, 0, 0)
BLUE = (0, 0, 255)

# Позиция квадрата
x = 400
y = 300

# Основной цикл игры
clock = pygame.time.Clock()
running = True

while running:
    # Обработка событий
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False
    
    # Управление стрелками
    keys = pygame.key.get_pressed()
    if keys[pygame.K_LEFT]: x -= 5
    if keys[pygame.K_RIGHT]: x += 5
    if keys[pygame.K_UP]: y -= 5
    if keys[pygame.K_DOWN]: y += 5
    
    # Отрисовка
    screen.fill(WHITE)
    pygame.draw.rect(screen, RED, (x, y, 50, 50))
    pygame.display.flip()
    clock.tick(60)

pygame.quit()
sys.exit()