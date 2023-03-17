// SPDX-License-Identifier: BSD-3-Clause

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char *delete_first(char *s, char *pattern) {
	char* index = strstr(s, pattern);
	long ddda = -(s - index);
	char* da = index + strlen(pattern);
	char* pat = malloc(strlen(s) * sizeof(char));
	sprintf(pat, "%s", da);
	char* y = strdup(pat);
	for(int i = ddda - 1; i >= 0; i --) {
		sprintf(pat, "%c%s", s[i], y);
		free(y);
		y = strdup(pat);
	}
	return pat;
}

int main(void)
{
	/*
	 * TODO: Este corectă declarația variabilei s în contextul în care o să apelăm
	 * funcția delete_first asupra sa? De ce? Modificați dacă este cazul.
	 */
	char s[] = "Ana are mere";
	char *pattern = "re";

	// Decomentați linia după ce ați implementat funcția delete_first.
	printf("%s\n", delete_first(s, pattern));

	return 0;
}
