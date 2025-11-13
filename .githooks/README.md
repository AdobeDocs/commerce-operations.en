# Pre-commit hooks for image optimization

This directory contains pre-commit hooks that automatically optimize images before they are committed to the repository.

## What the hooks do

- **Automatically detect** staged image files (PNG, JPG, JPEG, GIF, SVG)
- **Run `image_optim`** to compress and optimize images
- **Re-stage optimized images** automatically
- **Ensure all committed images** are properly optimized

## Benefits

- Reduced repository size
- Faster page loads for documentation
- Consistent image quality across all contributors
- No manual optimization required

## Prerequisites

- Ruby 3.0 or higher
- Bundler
- Git

## Setup

### Automatic setup (Recommended)

```bash
.githooks/setup-hooks.sh
```

### Manual setup

```bash
git config core.hooksPath .githooks
chmod +x .githooks/*
```

### Complete project setup

1. Clone the repository:

   ```bash
   git clone <repository-url>
   cd commerce-admin.en
   ```

2. Enable pre-commit hooks:

   ```bash
   .githooks/setup-hooks.sh
   ```

3. Install Jekyll dependencies:

   ```bash
   cd _jekyll
   bundle install
   ```

## Testing the hooks

1. Add an image file to your repository
2. Stage it: `git add <image-file>`
3. Try to commit: `git commit -m 'test'`
4. The hook should automatically optimize the image

### Expected output

```bash
Found 1 staged image(s). Running optimization...
Optimizing: path/to/your/image.png
Re-staged optimized image: path/to/your/image.png
Image optimization complete!
```

## Image guidelines

- **PNG**: Use for screenshots and UI elements (will be optimized automatically)
- **SVG**: Use for icons and simple graphics (optimization disabled by default)
- **JPEG**: Use for photographs (will be optimized automatically)
- **GIF**: Use for animations (will be optimized automatically)

The pre-commit hooks will automatically optimize all images on commit.

## Manual optimization

For manual image optimization:

```bash
cd _jekyll
bundle exec rake images:optimize path=../path/to/images
```

## Configuration

The hooks use the configuration file `_jekyll/.image_optim` to customize optimization settings:

- **PNG**: Uses `advpng`, `optipng`, and `pngquant`
- **JPEG**: Uses `jhead`, `jpegoptim`, and `jpegtran`
- **GIF**: Uses `gifsicle`
- **SVG**: SVG optimization is disabled by default (can break complex vector graphics and animations)

## Troubleshooting

### Hook not running

- Check hook configuration: `git config core.hooksPath`
- Ensure the hook file is executable: `chmod +x .githooks/pre-commit`
- Verify you're in the correct repository with `_jekyll` directory

### Optimization failures

- Verify `bundle install` has been run in the `_jekyll` directory
- Check that `image_optim` and `image_optim_pack` gems are installed
- Review the `.image_optim` configuration file

### Performance issues

- Adjust thread count in `_jekyll/.image_optim`
- Set `DEBUG=1` environment variable for detailed error information

## How it works

1. **Pre-commit trigger**: When you run `git commit`, the hook automatically executes
2. **Image detection**: Scans staged files for image extensions
3. **Optimization**: Runs `image_optim` on each staged image
4. **Re-staging**: Automatically adds optimized images back to the staging area
5. **Commit proceeds**: If optimization succeeds, the commit continues normally

## Supported image formats

- **PNG** (`.png`) - Lossless and lossy compression
- **JPEG** (`.jpg`, `.jpeg`) - Lossy compression with metadata cleanup
- **GIF** (`.gif`) - Animation and static optimization
- **SVG** (`.svg`) - Vector optimization (disabled by default)

## Best practices

1. **Test the hook**: Try committing a small image first to ensure it works
2. **Review changes**: Check the git diff to see optimization results
3. **Monitor performance**: Large images may take time to optimize
4. **Version control**: Hooks are stored in this `.githooks/` directory

## Support

For issues with the pre-commit hooks:

1. Check the hook output for error messages
2. Verify your `image_optim` setup is working
3. Test with the manual rake tasks first
4. Review the hook logs and configuration
5. Check the hook configuration: `git config core.hooksPath`
