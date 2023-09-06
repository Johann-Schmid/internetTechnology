$request = [System.Net.HttpWebRequest]::Create('https://johann-schmid.github.io/firstProjectHtmlCss/')
$request.Method = 'GET'
$response = $request.GetResponse()
$stream = $response.GetResponseStream()
$reader = New-Object System.IO.StreamReader($stream)
$body = $reader.ReadToEnd()
Write-Output $body
$response.Close()
$stream.Close()

