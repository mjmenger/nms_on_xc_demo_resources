
terraform {
    before_hook "pre-check-nginx-cert" {
        commands = ["apply","plan"]
        execute  = ["openssl","x509","-checkend","86400","-noout","-in","nginx-repo.crt"]
    }
    before_hook "pre-check-agent-cert" {
        commands = ["apply","plan"]
        execute  = ["openssl","x509","-checkend","86400","-noout","-in","agent.crt"]
    }
}




inputs = {
  key_name           = "menger-dev"
  owner_email        = "m.menger@f5.com"
  owner_name         = "Mark.Menger"
  tailscale_auth_key = "tskey-auth-k9pPZP5CNTRL-cnfaFg4yijFEJeTuZp1UnFXubcgd5VHbU"
  region             = "us-west-2"
  nms_host           = "menger2.nms-preview-achkxbsq.nginxlab.net"
}
