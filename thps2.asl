state("THawk2")
{
	int level: 0x15E944;
}

startup
{
	vars.oldLevel = 0;
	vars.doSplit = false;
}

update
{
	vars.doSplit = false;
	if (current.level != vars.oldLevel)
	{
		vars.doSplit = true;
		vars.oldLevel = current.level;
	}
	vars.oldLevel = current.level;
}

split
{
	return vars.doSplit;
}