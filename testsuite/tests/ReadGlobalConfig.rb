# encoding: utf-8

module Yast
  class ReadGlobalConfigClient < Client
    def main
      # testedfiles: SlpServer.ycp

      Yast.include self, "testsuite.rb"
      @READ = {
        "etc" => {
          "slp" => {
            "all" => {
              "comment" => "",
              "file"    => -1,
              "kind"    => "section",
              "name"    => "",
              "type"    => -1,
              "value"   => [
                {
                  "comment" => "#############################################################################\n" +
                    "#\n" +
                    "# OpenSLP configuration file\n" +
                    "#\n" +
                    "# Format and contents conform to specification in IETF RFC 2614 so the\n" +
                    "# comments use the language of the RFC.  In OpenSLP, SLPD operates as an SA\n" +
                    "# and a DA.  The SLP UA functionality is encapsulated by SLPLIB.\n" +
                    "#\n" +
                    "#############################################################################\n" +
                    "\n" +
                    "\n" +
                    "#----------------------------------------------------------------------------\n" +
                    "# Static Scope and Static DA Configuration\n" +
                    "#----------------------------------------------------------------------------\n" +
                    "\n" +
                    "# This option is a comma delimited list of strings indicating the only scopes\n" +
                    "# a UA or SA is allowed when making requests or registering or the scopes a\n" +
                    "# DA must support. (default value is \"DEFAULT\")\n",
                  "kind"    => "value",
                  "name"    => "net.slp.usescopes",
                  "type"    => 1,
                  "value"   => " "
                },
                {
                  "comment" => "\n" +
                    "\n" +
                    "# Allows administrator to force UA and SA agents to use specific DAs.  If\n" +
                    "# this setting is not used dynamic DA discovery will be used to determine\n" +
                    "# which DAs to use.  (Default is to use dynamic DA discovery)\n",
                  "kind"    => "value",
                  "name"    => "net.slp.daaddresses",
                  "type"    => 1,
                  "value"   => "127.0.0.1"
                },
                {
                  "comment" => "\n" +
                    "\n" +
                    "#----------------------------------------------------------------------------\n" +
                    "# DA Specific Configuration\n" +
                    "#----------------------------------------------------------------------------\n" +
                    "\n" +
                    "# Enables slpd to function as a DA. Only a very few DAs should exist.  It \n" +
                    "# is suggested that the administrator read the OpenSLP users guide before\n" +
                    "# enabling this setting. Default is false.  Uncomment the line below to \n" +
                    "# enable DA operation.\n",
                  "kind"    => "value",
                  "name"    => "net.slp.isda",
                  "type"    => 1,
                  "value"   => "false"
                },
                {
                  "comment" => "\n" +
                    "# A 32 bit integer giving the number of seconds for the DA heartbeat. \n" +
                    "# Default is 3 hours (10800 seconds).  This property corresponds to\n" +
                    "# the protocol specification parameter CONFIG_DA_BEAT [7].  Ignored \n" +
                    "# if isDA is false.\n",
                  "kind"    => "value",
                  "name"    => "net.slp.daheartbeat",
                  "type"    => 0,
                  "value"   => "= = = 10800"
                },
                {
                  "comment" => "\n" +
                    "\n" +
                    "#----------------------------------------------------------------------------\n" +
                    "# SA Specific Configuration\n" +
                    "#----------------------------------------------------------------------------\n" +
                    "\n" +
                    "# If net.slp.watchRegistrationPID is set to true, local registrations made\n" +
                    "# with the SA via the SLPReg() API call will be monitored.  If the PID of the\n" +
                    "# process (and/or thread on Linux) disappears (the registering process died\n" +
                    "# unexpectedly with out calling SLPDereg()), then the registration is \n" +
                    "# automatically de-registered.  (Default value is true.  Uncomment the line\n" +
                    "# below to disable PID watching.\n",
                  "kind"    => "value",
                  "name"    => "net.slp.watchregistrationpid",
                  "type"    => 0,
                  "value"   => "false"
                },
                {
                  "comment" => "\n" +
                    "\n" +
                    "#----------------------------------------------------------------------------\n" +
                    "# UA Specific Configuration\n" +
                    "#----------------------------------------------------------------------------\n" +
                    "# A 32 bit integer giving the maximum number of results to accumulate and \n" +
                    "# return for a synchronous request before the timeout, or the maximum number\n" +
                    "# of results to return through a callback if the request results are \n" +
                    "# reported asynchronously (default value is 256).\n",
                  "kind"    => "value",
                  "name"    => "net.slp.maxresults",
                  "type"    => 0,
                  "value"   => "= = = = 256"
                },
                {
                  "comment" => "\n" +
                    "\n" +
                    "#----------------------------------------------------------------------------\n" +
                    "# Network Configuration Properties\n" +
                    "#----------------------------------------------------------------------------\n" +
                    "\n" +
                    "# Force broadcasts to be used instead of multicast. This setting is seldom\n" +
                    "# necessary since OpenSLP will automatically use broadcast if multicast\n" +
                    "# is unavailable. (Default is false)\n",
                  "kind"    => "value",
                  "name"    => "net.slp.isbroadcastonly",
                  "type"    => 1,
                  "value"   => "true"
                },
                {
                  "comment" => "\n" +
                    "# A boolean indicating whether passive DA detection should be used.\n" +
                    "# Default is true.  Uncomment the following line to disable passive DA \n" +
                    "# detection\n",
                  "kind"    => "value",
                  "name"    => "net.slp.passivedadetection",
                  "type"    => 0,
                  "value"   => "= = = = false"
                },
                {
                  "comment" => "\n" +
                    "# A boolean indicating whether active DA detection should be used. This is\n" +
                    "# useful when the DAs available are explicitly restricted to those obtained\n" +
                    "# from DHCP or the net.slp.DAAddresses property. Default is true.  Uncomment\n" +
                    "# the following line to disable active DA detection\n",
                  "kind"    => "value",
                  "name"    => "net.slp.activedadetection",
                  "type"    => 1,
                  "value"   => "false"
                },
                {
                  "comment" => "\n" +
                    "# The net.slp.DAActiveDiscoveryInterval property controls *periodic* \n" +
                    "# transmission of active DA discovery SrvRqsts.  The default setting\n" +
                    "# of 1 which disables sending periodic active DA discovery SrvRqsts.  \n" +
                    "# However, even if net.slp.DAActiveDiscoveryInterval=1 OpenSLP agents will\n" +
                    "# send a send active DA request only upon initialization.  To disable all \n" +
                    "# active DA detection you MUST net.slp.passiveDADetection = false. (you\n" +
                    "# may also set net.slp.DAActiveDiscoveryInterval=0)\n" +
                    "# simply set \n",
                  "kind"    => "value",
                  "name"    => "net.slp.daactivediscoveryinterval",
                  "type"    => 0,
                  "value"   => "= = = = 1"
                },
                {
                  "comment" => "\n# A positive integer that is less than or equal to 255. (The default is  255)\n",
                  "kind"    => "value",
                  "name"    => "net.slp.multicastttl",
                  "type"    => 0,
                  "value"   => "= = = = 255"
                },
                {
                  "comment" => "\n" +
                    "# An integer giving the maximum amount of time (in milliseconds) to perform\n" +
                    "# active DA discovery requests. (Default is 2000 ms or 2 secs).\n",
                  "kind"    => "value",
                  "name"    => "net.slp.dadiscoverymaximumwait",
                  "type"    => 0,
                  "value"   => "= = = = 2000"
                },
                {
                  "comment" => "\n" +
                    "# A value-list of 32 bit integers used as timeouts, in milliseconds, to \n" +
                    "# implement the multicast convergence algorithm during active DA discovery.\n" +
                    "# Each value specifies the time to wait before sending the next request, or\n" +
                    "# until nothing new has been learned from two successive requests. \n" +
                    "# Default is:  500,750,1000,1500,2000,3000.\n",
                  "kind"    => "value",
                  "name"    => "net.slp.dadiscoverytimeouts",
                  "type"    => 0,
                  "value"   => "= = = = 500,750,1000,1500,2000,3000"
                },
                {
                  "comment" => "\n" +
                    "# An integer giving the maximum amount of time (in milliseconds) to perform\n" +
                    "# multicast requests. (Default is 5000 ms or 5 secs).\n",
                  "kind"    => "value",
                  "name"    => "net.slp.multicastmaximumwait",
                  "type"    => 0,
                  "value"   => "= = = = 5000"
                },
                {
                  "comment" => "\n" +
                    "# A value-list of 32 bit integers used as timeouts, in milliseconds, to\n" +
                    "# implement the multicast convergence algorithm.  Each value specifies\n" +
                    "# the time to wait before sending the next request, or until nothing new \n" +
                    "# has been learned from two successive requests.  \n" +
                    "# Default is:  500,750,1000,1500,2000,3000.  In a slow network the less\n" +
                    "# aggressive values of 3000,3000,3000,3000,3000 allow better performance.  \n",
                  "kind"    => "value",
                  "name"    => "net.slp.multicasttimeouts",
                  "type"    => 0,
                  "value"   => "= = =  = 500,750,1000,1500,2000,3000"
                },
                {
                  "comment" => "\n" +
                    "# An integer giving the maximum amount of time (in milliseconds) to perform\n" +
                    "# unicast requests. (Default is 5000 ms or 5 secs).\n",
                  "kind"    => "value",
                  "name"    => "net.slp.unicastmaximumwait",
                  "type"    => 0,
                  "value"   => "= = = = 5000 "
                },
                {
                  "comment" => "\n" +
                    "# A value-list of 32 bit integers used as timeouts, in milliseconds, to \n" +
                    "# implement unicast datagram transmission to DAs.  The nth value gives\n" +
                    "# the time to block waiting for a reply on the nth try to contact the DA.\n" +
                    "# Currently OpenSLP uses TCP for all unicast communication so this setting\n" +
                    "# does not do anything\n",
                  "kind"    => "value",
                  "name"    => "net.slp.unicasttimeouts",
                  "type"    => 0,
                  "value"   => "= = =  = 500,750,1000,1500,2000,3000"
                },
                {
                  "comment" => "\n" +
                    "# To OpenSLP the following is the same as net.slp.unicastTimeouts.  Use \n" +
                    "# net.slp.unicastTimeouts instead.\n",
                  "kind"    => "value",
                  "name"    => "net.slp.datagramtimeouts",
                  "type"    => 0,
                  "value"   => "= = = = IGNORED"
                },
                {
                  "comment" => "\n" +
                    "# An integer giving the maximum value for all random wait parameters.\n" +
                    "# (Default is 5000 or 5 sec)\n",
                  "kind"    => "value",
                  "name"    => "net.slp.randomwaitbound",
                  "type"    => 0,
                  "value"   => "= = = = 5000"
                },
                {
                  "comment" => "\n# A integer giving the network packet MTU in bytes. (Default is 1400)\n",
                  "kind"    => "value",
                  "name"    => "net.slp.mtu",
                  "type"    => 0,
                  "value"   => "= = = = 1400"
                },
                {
                  "comment" => "\n" +
                    "# A list of IP address of network interfaces on which the DA/SA should listen\n" +
                    "# for slp requests.  By default, slpd will use all interfaces.\n",
                  "kind"    => "value",
                  "name"    => "net.slp.interfaces",
                  "type"    => 0,
                  "value"   => "= = = = 1.2.3.4,1.2.3.5,1.2.3.6"
                },
                {
                  "comment" => "\n" +
                    "\n" +
                    "#----------------------------------------------------------------------------\n" +
                    "# Security\n" +
                    "#----------------------------------------------------------------------------\n" +
                    "# A boolean indicating whether the agent should enable security for URLs,\n" +
                    "# attribute lists, DAAdverts, and SAAdverts.  (Default setting is false and \n" +
                    "# ENABLE_SECURITY code must be compiled)\n",
                  "kind"    => "value",
                  "name"    => "net.slp.securityenabled",
                  "type"    => 0,
                  "value"   => "= = = tru e"
                },
                {
                  "comment" => "\n" +
                    "# A boolean indicating whether the DA or SA will only allow deregistrations \n" +
                    "# and re-registration from the *exact* host that made the registration. \n" +
                    "# Default setting if true.   Uncomment the line below to disable source \n" +
                    "# address checking.\n",
                  "kind"    => "value",
                  "name"    => "net.slp.checksourceaddr",
                  "type"    => 0,
                  "value"   => "= = = fals e"
                },
                {
                  "comment" => "\n" +
                    "\n" +
                    "#----------------------------------------------------------------------------\n" +
                    "# Tracing and Logging\n" +
                    "#----------------------------------------------------------------------------\n" +
                    "\n" +
                    "# A boolean controlling printing of messages about traffic with DAs.  \n" +
                    "# Default is false.  Uncomment the following line to enable DA traffic \n" +
                    "# tracing\n",
                  "kind"    => "value",
                  "name"    => "net.slp.tracedatraffic",
                  "type"    => 0,
                  "value"   => "= = = = true"
                },
                {
                  "comment" => "\n" +
                    "# A boolean controlling dumps of all registered services upon registration \n" +
                    "# and deregistration.  If true, the contents of the DA or SA server are \n" +
                    "# dumped after a registration or deregistration occurs.  Default is false.\n" +
                    "# Uncommment the following line to enable registration message logging\n",
                  "kind"    => "value",
                  "name"    => "net.slp.tracereg",
                  "type"    => 0,
                  "value"   => "= = = = true"
                },
                {
                  "comment" => "\n" +
                    "# A boolean controlling printing details when a SLP message is dropped for \n" +
                    "# any reason.  Default is false.  Uncomment the following line to trace all\n" +
                    "# dropped messages\n",
                  "kind"    => "value",
                  "name"    => "net.slp.tracedrop",
                  "type"    => 1,
                  "value"   => "false"
                },
                {
                  "comment" => "\n" +
                    "# A boolean controlling printing of details on SLP messages. The fields in \n" +
                    "# all incoming messages and outgoing replies are printed.  Very verbose.\n" +
                    "# Default is false. Uncomment the following line to enable verbose message\n" +
                    "# tracing.\n",
                  "kind"    => "value",
                  "name"    => "net.slp.tracemsg",
                  "type"    => 0,
                  "value"   => "= = = = true"
                }
              ]
            },
            "reg" => {
              "all" => {
                "comment" => "",
                "file"    => -1,
                "kind"    => "section",
                "name"    => "",
                "type"    => -1,
                "value"   => [
                  {
                    "comment" => "",
                    "file"    => -1,
                    "kind"    => "section",
                    "name"    => "/etc/slp.reg.d/bind.reg",
                    "type"    => -1,
                    "value"   => [
                      {
                        "comment" => "#############################################################################\n" +
                          "#\n" +
                          "# OpenSLP registration file\n" +
                          "#\n" +
                          "# register domain name service (DNS) daemon\n" +
                          "#\n" +
                          "#############################################################################\n" +
                          "\n",
                        "kind"    => "value",
                        "name"    => "service",
                        "type"    => 2,
                        "value"   => "domain://$HOSTNAME:53,en,65535"
                      },
                      {
                        "comment" => "",
                        "kind"    => "value",
                        "name"    => "watch-port-udp",
                        "type"    => 1,
                        "value"   => "53"
                      },
                      {
                        "comment" => "",
                        "kind"    => "value",
                        "name"    => "description",
                        "type"    => 1,
                        "value"   => "Domain Name Service"
                      }
                    ]
                  },
                  {
                    "comment" => "",
                    "file"    => -1,
                    "kind"    => "section",
                    "name"    => "/etc/slp.reg.d/ksysguardd.reg",
                    "type"    => -1,
                    "value"   => [
                      {
                        "comment" => "#############################################################################\n" +
                          "#\n" +
                          "# OpenSLP registration file\n" +
                          "#\n" +
                          "# register ksysguard daemon\n" +
                          "#\n" +
                          "#############################################################################\n" +
                          "\n",
                        "kind"    => "value",
                        "name"    => "service",
                        "type"    => 1,
                        "value"   => "ksysguardd.kde://$HOSTNAME:3112,en,65535"
                      },
                      {
                        "comment" => "",
                        "kind"    => "value",
                        "name"    => "watch-port-udp",
                        "type"    => 1,
                        "value"   => "3112"
                      },
                      {
                        "comment" => "",
                        "kind"    => "value",
                        "name"    => "description",
                        "type"    => 1,
                        "value"   => "KDE ksysguard daemon"
                      }
                    ]
                  },
                  {
                    "comment" => "",
                    "file"    => -1,
                    "kind"    => "section",
                    "name"    => "/etc/slp.reg.d/ntp.reg",
                    "type"    => -1,
                    "value"   => [
                      {
                        "comment" => "#############################################################################\n" +
                          "#\n" +
                          "# OpenSLP registration file\n" +
                          "#\n" +
                          "# register NTP daemon\n" +
                          "#\n" +
                          "#############################################################################\n" +
                          "\n",
                        "kind"    => "value",
                        "name"    => "service",
                        "type"    => 1,
                        "value"   => "ntp://$HOSTNAME:123,en,65535"
                      },
                      {
                        "comment" => "",
                        "kind"    => "value",
                        "name"    => "watch-port-udp",
                        "type"    => 1,
                        "value"   => "123"
                      },
                      {
                        "comment" => "",
                        "kind"    => "value",
                        "name"    => "description",
                        "type"    => 1,
                        "value"   => "Network Time Protocol [ntp]"
                      }
                    ]
                  },
                  {
                    "comment" => "",
                    "file"    => -1,
                    "kind"    => "section",
                    "name"    => "/etc/slp.reg.d/samba.reg",
                    "type"    => -1,
                    "value"   => [
                      {
                        "comment" => "#############################################################################\n" +
                          "#\n" +
                          "# OpenSLP registration file\n" +
                          "#\n" +
                          "# register Samba and SWAT\n" +
                          "#\n" +
                          "#############################################################################\n" +
                          "\n" +
                          "# Register the samba server, if it is running\n",
                        "kind"    => "value",
                        "name"    => "service",
                        "type"    => 1,
                        "value"   => "smb://$HOSTNAME,en,65535"
                      },
                      {
                        "comment" => "",
                        "kind"    => "value",
                        "name"    => "tcp-port",
                        "type"    => 1,
                        "value"   => "139"
                      },
                      {
                        "comment" => "",
                        "kind"    => "value",
                        "name"    => "description",
                        "type"    => 1,
                        "value"   => "Samba file and print server"
                      },
                      {
                        "comment" => "\n# Register the web administration front-end for samba\n",
                        "kind"    => "value",
                        "name"    => "service",
                        "type"    => 1,
                        "value"   => "Samba-Swat:http://$HOSTNAME:901,en,65535"
                      },
                      {
                        "comment" => "",
                        "kind"    => "value",
                        "name"    => "tcp-port",
                        "type"    => 1,
                        "value"   => "901"
                      },
                      {
                        "comment" => "",
                        "kind"    => "value",
                        "name"    => "description",
                        "type"    => 1,
                        "value"   => "Samba web administration front end"
                      }
                    ]
                  },
                  {
                    "comment" => "",
                    "file"    => -1,
                    "kind"    => "section",
                    "name"    => "/etc/slp.reg.d/sane.reg",
                    "type"    => -1,
                    "value"   => [
                      {
                        "comment" => "#############################################################################\n" +
                          "#\n" +
                          "# OpenSLP registration file for the scanner daemon (SANE)\n" +
                          "#\n" +
                          "#############################################################################\n" +
                          "\n" +
                          "#comment\n" +
                          "\n" +
                          "##Register a saned service on this system\n",
                        "kind"    => "value",
                        "name"    => "service",
                        "type"    => 1,
                        "value"   => "scanner.sane://$HOSTNAME:6566,en,65535"
                      },
                      {
                        "comment" => "# for inetd usage:\n",
                        "kind"    => "value",
                        "name"    => "tcp-port",
                        "type"    => 1,
                        "value"   => "6566"
                      },
                      {
                        "comment" => "",
                        "kind"    => "value",
                        "name"    => "description",
                        "type"    => 1,
                        "value"   => "SANE scanner daemon"
                      }
                    ]
                  },
                  {
                    "comment" => "",
                    "file"    => -1,
                    "kind"    => "section",
                    "name"    => "/etc/slp.reg.d/ssh.reg",
                    "type"    => -1,
                    "value"   => [
                      {
                        "comment" => "#############################################################################\n" +
                          "#\n" +
                          "# OpenSLP registration file\n" +
                          "#\n" +
                          "# register SSH daemon\n" +
                          "#\n" +
                          "#############################################################################\n" +
                          "\n" +
                          "# Register the usual sshd, if it is running\n",
                        "kind"    => "value",
                        "name"    => "service",
                        "type"    => 1,
                        "value"   => "ssh://$HOSTNAME:22,en,65535"
                      },
                      {
                        "comment" => "",
                        "kind"    => "value",
                        "name"    => "tcp-port",
                        "type"    => 1,
                        "value"   => "22"
                      },
                      {
                        "comment" => "",
                        "kind"    => "value",
                        "name"    => "description",
                        "type"    => 1,
                        "value"   => "Secure Shell Daemon"
                      },
                      {
                        "comment" => "\n# ssh can get used to copy files with konqueror using the fish:/ protocol\n",
                        "kind"    => "value",
                        "name"    => "service",
                        "type"    => 1,
                        "value"   => "fish://$HOSTNAME:22,en,65535"
                      },
                      {
                        "comment" => "",
                        "kind"    => "value",
                        "name"    => "tcp-port",
                        "type"    => 1,
                        "value"   => "22"
                      },
                      {
                        "comment" => "",
                        "kind"    => "value",
                        "name"    => "description",
                        "type"    => 1,
                        "value"   => "KDE file transfer via SSH"
                      }
                    ]
                  },
                  {
                    "comment" => "",
                    "file"    => -1,
                    "kind"    => "section",
                    "name"    => "/etc/slp.reg.d/test.reg",
                    "type"    => -1,
                    "value"   => [
                      {
                        "comment" => "#############################################################################\n" +
                          "#\n" +
                          "# OpenSLP registration file\n" +
                          "#\n" +
                          "# file just for testing\n" +
                          "#\n" +
                          "#############################################################################\n" +
                          "\n" +
                          "# Register the test server\n",
                        "kind"    => "value",
                        "name"    => "service",
                        "type"    => 1,
                        "value"   => "test://$HOSTNAME:879,en,65535"
                      },
                      {
                        "comment" => "#tcp-port=879\n",
                        "kind"    => "value",
                        "name"    => "description",
                        "type"    => 1,
                        "value"   => "Test server just for testing"
                      },
                      {
                        "comment" => "\n\n",
                        "kind"    => "value",
                        "name"    => "service",
                        "type"    => 1,
                        "value"   => "test2://$HOSTNAME:880,en,65535"
                      },
                      {
                        "comment" => "",
                        "kind"    => "value",
                        "name"    => "description",
                        "type"    => 1,
                        "value"   => "zdvscd"
                      }
                    ]
                  },
                  {
                    "comment" => "",
                    "file"    => -1,
                    "kind"    => "section",
                    "name"    => "/etc/slp.reg.d/vnc.reg",
                    "type"    => -1,
                    "value"   => [
                      {
                        "comment" => "#############################################################################\n" +
                          "#\n" +
                          "# OpenSLP registration file\n" +
                          "#\n" +
                          "# register VNC remote logins via kdm\n" +
                          "# You need also to allow remote logins\n" +
                          "#\n" +
                          "#############################################################################\n" +
                          "\n" +
                          "# Register VNC service for krdc (KDE VNC client in kdenetwork)\n",
                        "kind"    => "value",
                        "name"    => "service",
                        "type"    => 1,
                        "value"   => "remotedesktop.kde:vnc://$HOSTNAME:5901,en,65535"
                      },
                      {
                        "comment" => "",
                        "kind"    => "value",
                        "name"    => "tcp-port",
                        "type"    => 1,
                        "value"   => "5901"
                      },
                      {
                        "comment" => "",
                        "kind"    => "value",
                        "name"    => "description",
                        "type"    => 1,
                        "value"   => "VNC remote login [1024x768]"
                      },
                      {
                        "comment" => "\n# Register VNC service for krdc (KDE VNC client in kdenetwork)\n",
                        "kind"    => "value",
                        "name"    => "service",
                        "type"    => 1,
                        "value"   => "remotedesktop.kde:vnc://$HOSTNAME:5902,en,65535"
                      },
                      {
                        "comment" => "",
                        "kind"    => "value",
                        "name"    => "tcp-port",
                        "type"    => 1,
                        "value"   => "5902"
                      },
                      {
                        "comment" => "",
                        "kind"    => "value",
                        "name"    => "description",
                        "type"    => 1,
                        "value"   => "VNC remote login [1280x1024]"
                      },
                      {
                        "comment" => "\n# Register VNC service for krdc (KDE VNC client in kdenetwork)\n",
                        "kind"    => "value",
                        "name"    => "service",
                        "type"    => 1,
                        "value"   => "remotedesktop.kde:vnc://$HOSTNAME:5903,en,65535"
                      },
                      {
                        "comment" => "",
                        "kind"    => "value",
                        "name"    => "tcp-port",
                        "type"    => 1,
                        "value"   => "5903"
                      },
                      {
                        "comment" => "",
                        "kind"    => "value",
                        "name"    => "description",
                        "type"    => 1,
                        "value"   => "VNC remote login [1600x1200]"
                      },
                      {
                        "comment" => "\n" +
                          "# Register VNC service for Java clients\n" +
                          "# Can be used with every Web browser with enabled Java\n",
                        "kind"    => "value",
                        "name"    => "service",
                        "type"    => 1,
                        "value"   => "remotedesktop.java:http://$HOSTNAME:5801,en,65535"
                      },
                      {
                        "comment" => "",
                        "kind"    => "value",
                        "name"    => "tcp-port",
                        "type"    => 1,
                        "value"   => "5801"
                      },
                      {
                        "comment" => "",
                        "kind"    => "value",
                        "name"    => "description",
                        "type"    => 1,
                        "value"   => "VNC remote login [1024x768]"
                      },
                      {
                        "comment" => "\n" +
                          "# Register VNC service for Java clients\n" +
                          "# Can be used with every Web browser with enabled Java\n",
                        "kind"    => "value",
                        "name"    => "service",
                        "type"    => 1,
                        "value"   => "remotedesktop.java:http://$HOSTNAME:5802,en,65535"
                      },
                      {
                        "comment" => "",
                        "kind"    => "value",
                        "name"    => "tcp-port",
                        "type"    => 1,
                        "value"   => "5802"
                      },
                      {
                        "comment" => "",
                        "kind"    => "value",
                        "name"    => "description",
                        "type"    => 1,
                        "value"   => "VNC remote login [1280x1024]"
                      },
                      {
                        "comment" => "\n" +
                          "# Register VNC service for Java clients\n" +
                          "# Can be used with every Web browser with enabled Java\n",
                        "kind"    => "value",
                        "name"    => "service",
                        "type"    => 1,
                        "value"   => "remotedesktop.java:http://$HOSTNAME:5803,en,65535"
                      },
                      {
                        "comment" => "",
                        "kind"    => "value",
                        "name"    => "tcp-port",
                        "type"    => 1,
                        "value"   => "5803"
                      },
                      {
                        "comment" => "",
                        "kind"    => "value",
                        "name"    => "description",
                        "type"    => 1,
                        "value"   => "VNC remote login [1600x1200]"
                      }
                    ]
                  }
                ]
              }
            }
          }
        }
      }

      TESTSUITE_INIT([@READ, {}, {}], nil)

      Yast.import "SlpServer"

      TEST(lambda { SlpServer.ReadGlobalConfig }, [@READ, {}, {}], nil)
      DUMP(SlpServer.reg_files)

      nil
    end
  end
end

Yast::ReadGlobalConfigClient.new.main
