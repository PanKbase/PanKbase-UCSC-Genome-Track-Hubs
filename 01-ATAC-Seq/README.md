# UCSC Track Hub Setup Instructions

## Files Created
- `hub.txt` - Main hub configuration file
- `genomes.txt` - Specifies genome assemblies supported
- `hg38/trackDb.txt` - Track definitions for human genome hg38
- `description.html` - Detailed description of the data

## Setup Instructions

1. **Upload files to a web server:**
   Upload all files to a publicly accessible web server, maintaining the directory structure:
   ```
   your-server.com/
   ├── hub.txt
   ├── genomes.txt
   ├── description.html
   └── hg38/
       └── trackDb.txt
   ```

2. **Update the hub.txt file:**
   Replace `your.email@domain.com` with your actual email address.

3. **Add Track Hub to UCSC:**
   - Go to https://genome.ucsc.edu/
   - Navigate to "My Data" → "Track Hubs"
   - Click "My Hubs" tab
   - Enter the URL to your hub.txt file: `https://your-server.com/hub.txt`
   - Click "Add Hub"

## Track Organization
- Tracks are organized alphabetically by cell type
- For each cell type: Signal track appears above Peak track

## Cell Types (12 total)
1. A_Stellate (Activated stellate)
2. Acinar 
3. Alpha
4. Beta 
5. Delta
6. Ductal
7. Endothelial
8. Gamma
9. Immune
10. MUC5B_Ductal
11. Q_Stellate (Quiescent stellate)
12. Schwann

## Data Types
- **BigWig files:** Continuous ATAC-seq signal (coverage)
- **BED files:** Discrete ATAC-seq peaks (regions of open chromatin)

## Troubleshooting
- Ensure all files are publicly accessible via HTTP/HTTPS
- Check that file URLs return the correct content when accessed in a browser
- Verify the hub.txt URL is publicly accessible
- Make sure there are no syntax errors in trackDb.txt
