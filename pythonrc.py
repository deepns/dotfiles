import readline

# My init file for the python interpreter sessions

def show_history(num_recent=10):
    """ Show the entries from interpreter history buffer

    Args:
        num_recent (int): Number of entries to show (default:10)
    """
    history_length = readline.get_current_history_length()
    # Index of the underlying history buffer one based
    # https://docs.python.org/3/library/readline.html?highlight=readline#readline.get_history_item
    start = max(1, history_length - num_recent)
    for i in range(start, history_length):
        print("{} {}".format(i, readline.get_history_item(i)))
