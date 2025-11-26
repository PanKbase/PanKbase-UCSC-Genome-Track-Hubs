# UCSC Track Hub Setup Instructions

Setup at UCSC Genome Browser

1. Create new (hg38) session and save it with a new session name. URL: https://genome.ucsc.edu/s/cds/PanKbase_snATAC_20251124
2. Test hub via My Data > Track Hubs > Hub Development
3. Add hub via My Data > Track Hubs > Connected Hubs > https://pankbase.github.io/PanKbase-UCSC-Genome-Track-Hubs/01-ATAC-Seq/hub.txt
4. Customize tracks
5. Re-save session
6. Share URL 

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
       └── trackDb_OR_OTHER.txt
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
- Tracks are organized by cell type
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
- **BigBed files:** Discrete ATAC-seq peaks (regions of open chromatin) - converted with bedToBigBed (see `src/01-batch-convert-bed-to-bigbed.sh`)

## Troubleshooting
- Ensure all files are publicly accessible via HTTP/HTTPS
- Check that file URLs return the correct content when accessed in a browser
- Verify the hub.txt URL is publicly accessible
- Make sure there are no syntax errors in trackDb.txt
