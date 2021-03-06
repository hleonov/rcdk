# =============================================
# RCDK - The Chemistry Development Kit for Ruby
# =============================================
#
# Project Info: http://rubyforge.org/projects/rcdk
# Blog: http://depth-first.com
#
# Copyright (C) 2006 Richard L. Apodaca
#
# This library is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License version 2.1 as published by the Free Software
# Foundation.
#
# This library is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
# Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public
# License along with this library; if not, write to the Free
# Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor
# Boston, MA 02111-1301, USA.

$:.unshift File.join(File.dirname(__FILE__), "..", "lib")
require 'test/unit'
require 'rcdk'
require 'rcdk/util'

jrequire 'org.openscience.cdk.templates.MoleculeFactory'

# A very simple test suite. Woefully incomplete. Just exercises the API.
class BasicTest < Test::Unit::TestCase
  include RCDK::Util
  include Org::Openscience::Cdk::Templates
  
  def setup
    @benzene =
"c1ccccc1
JME 2004.10 Thu Jun 01 18:20:16 EDT 2006

  6  6  0  0  0  0  0  0  0  0999 V2000
    0.0000    0.0000    0.0000 C   0  0  0  0  0  0  0  0  0  0  0  0
    0.0000    0.0000    0.0000 C   0  0  0  0  0  0  0  0  0  0  0  0
    0.0000    0.0000    0.0000 C   0  0  0  0  0  0  0  0  0  0  0  0
    0.0000    0.0000    0.0000 C   0  0  0  0  0  0  0  0  0  0  0  0
    0.0000    0.0000    0.0000 C   0  0  0  0  0  0  0  0  0  0  0  0
    0.0000    0.0000    0.0000 C   0  0  0  0  0  0  0  0  0  0  0  0
  1  2  2  0  0  0  0
  1  3  1  0  0  0  0
  2  4  1  0  0  0  0
  3  5  2  0  0  0  0
  4  6  2  0  0  0  0
  5  6  1  0  0  0  0
M  END"
  end
  

  def test_smiles_to_png
    Image.smiles_to_png('Clc1ccccc1', 'output/chlorobenzene.png', 200, 200)
  end

  def test_smiles_to_jpg
    Image.smiles_to_jpg('Clc1ccccc1', 'output/chlorobenzene.jpg', 200, 200)
  end
end

