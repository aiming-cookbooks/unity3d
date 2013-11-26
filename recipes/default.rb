#
# Cookbook Name:: unity3d
# Recipe:: default
#
# Copyright 2013, Aiming, Inc.
#
# All rights reserved - Do Not Redistribute
#

dmg_properties = node['unity3d']['dmg']

dmg_package "Unity" do
  volumes_dir 'Unity Installer'
  source dmg_properties['source']
  checksum dmg_properties['checksum']
  action :install
  owner node['current_user']
  type "pkg"
  package_id 'com.unity.UnityWebPlayer'
  # com.unity.UnityWebPlayer
  # com.unity3d.ExampleProject
  # com.unity3d.UnityEditor4.x
end
