# Rake Library Files

This directory contains rake task definitions organized by functionality. Rake automatically loads all `.rake` files in this directory.

## File Organization

### `adobe-docs-tasks.rake`

Contains common requires, shared functionality, and non-namespaced tasks for Adobe Commerce on Experience League documentation repository rake tasks:

- `whatsnew` - Generate data for news digest (default: since last update)
- `render` - Render templated files and maintain includes

### `includes.rake`

Contains include management tasks organized in the `:includes` namespace:

- `includes:maintain_relationships` - Discover and maintain include relationships in markdown files
- `includes:maintain_timestamps` - Add/update timestamps based on include file changes
- `includes:maintain_all` - Run both operations in sequence
- `includes:unused` - Find unused include files

### `images.rake`

Contains image management tasks organized in the `:images` namespace:

- `images:optimize` - Optimize images in modified uncommitted files
- `images:unused` - Find unused images in the project

## How it works

Rake automatically discovers and loads any `.rake` files in the `rakelib/` directory. This allows us to:

1. **Organize tasks by functionality** - Group related tasks together
2. **Keep the main Rakefile clean** - Focus on core project tasks
3. **Easily add new task groups** - Just create new `.rake` files
4. **Maintain separation of concerns** - Each file handles a specific domain

## Adding new task groups

To add a new group of related tasks:

1. Create a new `.rake` file in this directory
2. Use a descriptive namespace (e.g., `namespace :images` for image-related tasks)
3. Define your tasks within the namespace
4. Rake will automatically load them

## Example structure

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
