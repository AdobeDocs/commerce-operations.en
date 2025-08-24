# Rake Library Files

This directory contains rake task definitions organized by functionality. Rake automatically loads all `.rake` files in this directory.

## File Organization

### `includes.rake`

Contains all include-related rake tasks under the `:includes` namespace:

- `includes:maintain_relationships` - Discover and maintain include relationships
- `includes:maintain_timestamps` - Add/update timestamps based on include file changes
- `includes:maintain_all` - Run both operations in sequence

## How It Works

Rake automatically discovers and loads any `.rake` files in the `rakelib/` directory. This allows us to:

1. **Organize tasks by functionality** - Group related tasks together
2. **Keep the main Rakefile clean** - Focus on core project tasks
3. **Easily add new task groups** - Just create new `.rake` files
4. **Maintain separation of concerns** - Each file handles a specific domain

## Adding New Task Groups

To add a new group of related tasks:

1. Create a new `.rake` file in this directory
2. Use a descriptive namespace (e.g., `namespace :images` for image-related tasks)
3. Define your tasks within the namespace
4. Rake will automatically load them

## Example Structure

```ruby
namespace :your_namespace do
  desc 'Description of what this task does'
  task :task_name do
    # Task implementation
  end
end
```

## Usage

Tasks are available immediately after creation:

```bash
rake your_namespace:task_name
```

## Benefits

- **Modularity**: Each file focuses on a specific area
- **Maintainability**: Easier to find and modify specific task groups
- **Scalability**: Can add many task groups without cluttering the main Rakefile
- **Team Development**: Different developers can work on different task groups
