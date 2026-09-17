int my_strlen(const char *s)
{
	int size_t = 0;

	while (s[size_t] != '\0') {
		size_t++;
	}

	return size_t;
}