#Mapping Public EndPoint file share on windows - Arvind Rana

#provide the target storage account
$target = "akrstorage.file.core.windows.net"
#provide the connection credentials storage account key or AD account
$username = "localhost\akrstorage"
$pwd = "MvFVfDRxKS70JBaXnE9NjRP9Te3px2/QF6/9LidkHbAqUMjqozO0WKOVI2c1viwaztjrs4xKWbio+AStUR4XvA=="

#provide drive letter to use and file share path
$driveletter = "L"
$sharepath = "\\akrstorage.file.core.windows.net\akrshare"

#no change required below.
#this cmd will create credentials and below script will map the drive
cmd.exe /C cmdkey /add $target /user $username /pass $pwd

New-PSDrive -Name $driveletter -PSProvider FileSystem -Root $sharepath -Persist

#Mapping file share on windows - Arvind Rana