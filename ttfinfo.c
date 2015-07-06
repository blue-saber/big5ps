/*
 *	ttfinfo.c
 *
 *	Copyright (c) 2002, Jiann-Ching Liu
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <getopt.h>
#include <netinet/in.h>
#include <ft2build.h>
#include <freetype/freetype.h>

struct ttf_table_directory {
	TT_Fixed	sfnt_version;
	TT_UShort	numTables;
	TT_UShort	searchRange;
	TT_UShort	entrySelector;
	TT_UShort	rangeShift;
};

static void load_table (FILE *fp) {
	struct ttf_table_directory	ttb;

	fread (&ttb, 1, sizeof (ttb), fp);

	fprintf (stderr, "TrueType Version %d.%d\n",
			((unsigned int) ttb.sfnt_version >> 8),
			((unsigned int) ttb.sfnt_version & 0x255));

	fprintf (stderr, "Number of tables: %d\n", ntohs (ttb.numTables));
}

int main (int argc, char *argv[]) {
	FILE			*fp = NULL;
	int			c;
	int			errflag = 0;
	char			*outfile = "output.ps";
	
	while ((c = getopt (argc, argv, "hf:o:")) != EOF) {
		switch (c) {
		case 'o':
			outfile = optarg;
			break;
		case 'f':
			// fontfile[0] = optarg;
			break;
		case 'h':
		case '?':
		default:
			errflag++;
			break;
		}
	}

	fprintf (stderr, "ttfinfo %s, Copyright (c) 2002, Jiann-Ching Liu\n\n",
			VERSION);
	if (errflag) {
		fprintf (stderr, "usage: "
			"ttfinfo [-o outfile] fontfile\n");
		return 1;
	}

	if (optind < argc) {
		if (strcmp (argv[optind], "-") == 0) {
			fprintf (stderr, "Input from stdin\n");
			fp = stdin;
		} else {
			//fprintf (stderr, "Input file = [%s]\n", argv[optind]);

			if ((fp = fopen (argv[optind], "r")) == NULL) {
				perror (argv[optind]);
				return 1;
			}
		}
	} else {
		fprintf (stderr, "No input file\n");
		return 1;
	}

	load_table (fp);
	// load_cmap (fp);

	fclose (fp);
	return 0;
}
