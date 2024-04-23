#!/bin/sh

rclone serve webdav Onedrive\ UEx: --addr 127.0.0.1:6969 --vfs-cache-mode writes
