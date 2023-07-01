import discord
from discord.ext import commands

bot = commands.Bot(command_prefix='!')

@bot.event
async def on_ready():
    print(f'Logged in as {bot.user.name}')

@bot.slash_command()
async def add(ctx, num1: float, num2: float):
    result = num1 + num2
    await ctx.respond(f"The result of {num1} + {num2} is {result}")

@bot.slash_command()
async def subtract(ctx, num1: float, num2: float):
    result = num1 - num2
    await ctx.respond(f"The result of {num1} - {num2} is {result}")

@bot.slash_command()
async def multiply(ctx, num1: float, num2: float):
    result = num1 * num2
    await ctx.respond(f"The result of {num1} * {num2} is {result}")

@bot.slash_command()
async def divide(ctx, num1: float, num2: float):
    if num2 == 0:
        await ctx.send("Cannot divide by zero!")
    else:
        result = num1 / num2
        await ctx.respond(f"The result of {num1} / {num2} is {result}")

bot.run('MTEyMjI1MTE2NzYxNTk1OTE0MQ.G7sT5R.fjiTjHXe4ciXL_c6I4GTpfMTGeBK32-zQnVShQ')
