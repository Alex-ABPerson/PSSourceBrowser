# SourceBrowser

# PowerShell Source Browser

This is an online browser for the C# parts of the official PowerShell source code, all the source found in [https://github.com/powershell/powershell](powershell/powershell)

All of the pages are already generated and ready-to-go in this repo, and are already included in `Generated`.

## Running 

Since all the pages needed are already generated, to run or host this site, all you need to do is the follwoing:

1. Build the server-side parts - `BuildSite.cmd`
2. Run the site - `Run.cmd`

This can be done on Linux no problem too, just replicate what the scripts are doing in Bash.

## Generating

If the pages included in the repo are too outdated for you, you can generate brand-new pages by running `GenerateNew.cmd`. This will clone the latest commits from the PowerShell repo into `PSSource`, and then use that to generate new pages in `Generated`.

After running `GenerateNew.cmd` there's no need to run `BuildSite.cmd`, just `Run.cmd`

**Note:** Generating new pages is unfortunately not supported on Linux.

## Troubleshooting

If you don't have Git in the path, either add it or modify the all git operations in the `Build.cmd` script to go to exact location of `git` on your system.
If you don't have `msbuild` in the path, either add it or modify the last line in the `Build.cmd` script to go to exact location of `msbuild` on your system.

## Generated with

The pages are generated using https://github.com/KirillOsenkov/SourceBrowser and more details about the source browser itself can be found there.