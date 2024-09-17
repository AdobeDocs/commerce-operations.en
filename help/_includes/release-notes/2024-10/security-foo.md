# August 2024 security patch highlights

The following security enhancements in this release improve compiance with the latest security best practices:

<table style="table-layout-auto">
    <tbody>
        <tr>
            <td><strong>Settings</strong></td>
            <td>This release includes the following enhancements to security settings:
              <ul>
                <li><strong>Encryption key rotation</strong>: A new CLI command is now available for changing your encryption key. See the [Troubleshooting Encryption Key Rotation: CVE-2024-34102](https://experienceleague.adobe.com/en/docs/commerce-knowledge-base/kb/troubleshooting/known-issues-patches-attached/troubleshooting-encryption-key-rotation-cve-2024-34102) Knowledge Base article for details.<!-- AC-12589 --></li>
                <li><strong>One-time password (OTP) settings</strong>: This update is required to resolve an error that was introduced by a <a href="https://developer.adobe.com/commerce/php/development/backward-incompatible-changes/highlights/#new-system-configuration-validation-for-two-factor-authentication-otp_window-value">backward-incompatible change</a> in 2.4.7. The description of the <strong>[!UICONTROL OTP Window]</strong> field now provides an accurate explanation of the setting and the default value has been changed from <code>1</code> to <code>29</code>.<!-- AC-11762 --></li>
              </ul>
            </td>
        </tr>
    </tbody>
</table>
