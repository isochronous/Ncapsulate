﻿param($installPath, $toolsPath, $package, $project)

<# Get the project location #>
$projectPath = $project.FullName;
$projectDirectory = (Get-Item $projectPath).DirectoryName

<# Remove karma.cmd #>
Remove-Item ($projectDirectory + '\karma.cmd')

<# Remove the build target #>
#$buildProject = @([Microsoft.Build.Evaluation.ProjectCollection]::GlobalProjectCollection.GetLoadedProjects($projectPath))[0]
<#foreach ($import in $buildProject.Xml.Imports) {
	if ($import.Project -eq "App_Build\karma.targets") {
		#$buildProject.Xml.RemoveChild($import);
		break;
	}
}#>
##$buildProject.Save();

