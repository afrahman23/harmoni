# by @afrahman23
/file remove [find where name="srctrace.txt"]
{
    :local jobid [:execute file=srctrace.txt script="/tool trace address=8.8.8.8 src-address=192.168.9.1 count=10"]
    :put "Waiting the end of process for file srctrace.txt to be ready, max 20 seconds..."
    :global Gltesec 0
    :while (([:len [/sys script job find where .id=$jobid]] = 1) && ($Gltesec < 20)) do={
        :set Gltesec ($Gltesec + 1)
        :delay 1s
        :put "waiting... $Gltesec"
    }
    :put "Done. Elapsed Seconds: $Gltesec\r\n"
    :if ([:len [/file find where name="srctrace.txt"]] = 1) do={
        :local filecontent [/file get [/file find where name="srctrace.txt"] contents]
        :if ($filecontent ~ "received=0") do={:put "Unreachable"; :return ""}
        :if ($filecontent ~ "input does not match any value of interface") do={:put "Wrong Interface"; :return ""}
        :local resultstart [:find $filecontent "sent" -1]
        :local resultend [:find $filecontent " \r\n\r\n" $resultstart]
        :local getresult [:pick $filecontent $resultstart $resultend]
        :local getavgrtt [:pick $getresult ([:find $getresult "avg-rtt=" -1] + 8) [:find $getresult " max-rtt" -1] ]
        :put "Result: >$getresult<"
        :put "only avg-rtt: >$getavgrtt<"
    } else={
        :put "File not created."
    }
}