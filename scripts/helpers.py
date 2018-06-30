from os import path


def get_user():
    user_path = path.expanduser("~")

    # Splitting the path will return array ["", "Users", "$user"]
    # we want to return the third element
    user = user_path.split("/")[2]

    return user
