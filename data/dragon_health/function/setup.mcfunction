# Setup function to initialize scoreboards and schedule the health modification function
scoreboard objectives add dragon dummy

# Schedule the modify_health function to run every tick
schedule function dragon_health:modify_health 1t