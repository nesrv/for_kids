import pygame
import random
import string

pygame.init()
screen = pygame.display.set_mode((800, 600))
pygame.display.set_caption("Игра с буквами")
clock = pygame.time.Clock()
font = pygame.font.Font(None, 72)

# Переменные для буквы
letter = random.choice(string.ascii_uppercase)
letter_x = random.randint(50, 750)
letter_y = random.randint(50, 550)

running = True
while running:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False
        if event.type == pygame.KEYDOWN:
            if event.unicode.upper() == letter:
                # Новая буква в новом месте
                letter = random.choice(string.ascii_uppercase)
                letter_x = random.randint(50, 750)
                letter_y = random.randint(50, 550)
    
    # Рандомный цвет фона
    r = random.randint(0, 255)
    g = random.randint(0, 255)
    b = random.randint(0, 255)
    
    screen.fill((r, g, b))
    
    # Отрисовка буквы
    text = font.render(letter, True, (255, 255, 255))
    screen.blit(text, (letter_x, letter_y))
    
    pygame.display.flip()
    clock.tick(10)

pygame.quit()