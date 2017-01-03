# Pillar settings for the windows-update-agent formula correspond to registry
# keys found in this technet article:
# - https://technet.microsoft.com/en-us/library/Dd939844(v=WS.10).aspx
# The formula supports all keys listed in that article under these subkeys:
# - HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate
# - HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer
# - HKEY_LOCAL_MACHINE\SYSTEM\Internet Communication Management\Internet Communication
# - HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\WindowsUpdate
# - HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate\AU


windows-update-agent:
  # Set `remove-undefined-keys` to `True` to remove any Windows Update
  # registry keys that are not present in pillar, or that have no value ('').
  # Absent keys resume the default Windows behaviour for that setting.
  remove-undefined-keys: False

  # Dictionary of Windows Update registry keys and values
  registry:
    hklm-windows-update:
      AcceptTrustedPublisherCerts: ''
      DisableWindowsUpdateAccess: ''
      ElevateNonAdmins: ''
      TargetGroup: ''
      TargetGroupEnabled: ''
      WUServer: 'https://wsus.example.com'
      WUStatusServer: 'https://wsus.example.com'
    hkcu-explorer:
      DisableWindowsUpdateAccess: ''
    hklm-internet-communication:
      NoWindowsUpdate: ''
    hkcu-windows-update:
      DisableWindowsUpdateAccess: ''
    hklm-windows-update-au:
      AUOptions: ''
      AutoInstallMinorUpdates: ''
      DetectionFrequency: ''
      DetectionFrequencyEnabled: ''
      NoAutoRebootWithLoggedOnUsers: ''
      NoAutoUpdate: ''
      RebootRelaunchTimeout: ''
      RebootRelaunchTimeoutEnabled: ''
      RebootWarningTimeout: ''
      RebootWarningTimeoutEnabled: ''
      RescheduleWaitTime: ''
      RescheduleWaitTimeEnabled: ''
      ScheduledInstallDay: ''
      ScheduledInstallTime: ''
      UseWUServer: '1'
