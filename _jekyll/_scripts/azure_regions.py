# This script generates a world map, plots data obtained from _jekyll/tmp/azure-regions.json,
# and writes the result to _jekyll/tmp/azure-regions.pdf.
# For details on pygmt, see https://www.pygmt.org/latest/index.html.
# For package installation, you can use micromamba (https://mamba.readthedocs.io/en/latest/installation/micromamba-installation.html)
# and run the commands for mamba but replacing it with micromamba: https://www.pygmt.org/latest/install.html.

import pygmt
import json

# Load the JSON data
with open('tmp/azure-regions.json') as f:
    regions_data = json.load(f)

# Initialize the figure
fig = pygmt.Figure()

# Plot the coastlines
fig.coast(region=[-140, 180, -45, 65], land="grey", projection="M30c")
fig.basemap(frame=[0, "+tAzure regions"])

# Extract and plot the coordinates
for region in regions_data:
    metadata = region.get('metadata', {})
    longitude = metadata.get('longitude')
    latitude = metadata.get('latitude')
    display_name = region.get('displayName')
    if longitude is not None and latitude is not None:
        print(f"Plotting: Longitude={longitude}, Latitude={latitude}, Name={display_name}")  # Debugging line
        fig.plot(x=float(longitude), y=float(latitude), style="c0.2c", fill="red", pen="black")
        if display_name:
            fig.text(x=float(longitude), y=float(latitude), text=display_name, font="8p,Helvetica-Bold,black", justify="LT", offset="j0.1c")

# Save the figure
fig.savefig("tmp/azure-regions.pdf")
# fig.show()
