from django.contrib.auth import get_user_model

# Get the custom User model if one is defined, otherwise the default Django User model
User = get_user_model()

# Check if any superuser exists
if User.objects.filter(is_superuser=True).exists():
    print("At least one superuser exists.")
else:
    print("No superuser found.")

# You can also retrieve the superusers if needed
superusers = User.objects.filter(is_superuser=True)
if superusers.exists():
    print("Found superusers:")
    for user in superusers:
        print(f"- {user.username}")
else:
    print("No superusers to list.")