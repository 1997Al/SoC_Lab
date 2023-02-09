-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Feb  9 10:48:10 2023
-- Host        : DESKTOP-PPIVJC1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Master/SoC_Lab/Xilinx/SoC_Lab/SoC_Lab.gen/sources_1/bd/design_1/ip/design_1_ready_checker_0_0/design_1_ready_checker_0_0_sim_netlist.vhdl
-- Design      : design_1_ready_checker_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ready_checker_0_0_ready_checker is
  port (
    o_rdy : out STD_LOGIC;
    i_IN : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_clk : in STD_LOGIC;
    i_rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ready_checker_0_0_ready_checker : entity is "ready_checker";
end design_1_ready_checker_0_0_ready_checker;

architecture STRUCTURE of design_1_ready_checker_0_0_ready_checker is
  signal cycles : STD_LOGIC;
  signal cycles1 : STD_LOGIC;
  signal \cycles1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \cycles1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \cycles1_carry__0_n_3\ : STD_LOGIC;
  signal cycles1_carry_i_1_n_0 : STD_LOGIC;
  signal cycles1_carry_i_2_n_0 : STD_LOGIC;
  signal cycles1_carry_i_3_n_0 : STD_LOGIC;
  signal cycles1_carry_i_4_n_0 : STD_LOGIC;
  signal cycles1_carry_n_0 : STD_LOGIC;
  signal cycles1_carry_n_1 : STD_LOGIC;
  signal cycles1_carry_n_2 : STD_LOGIC;
  signal cycles1_carry_n_3 : STD_LOGIC;
  signal \cycles[0]_i_1_n_0\ : STD_LOGIC;
  signal \cycles[0]_i_4_n_0\ : STD_LOGIC;
  signal \cycles[0]_i_5_n_0\ : STD_LOGIC;
  signal \cycles[0]_i_6_n_0\ : STD_LOGIC;
  signal cycles_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \cycles_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \cycles_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \cycles_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \cycles_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \cycles_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \cycles_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \cycles_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \cycles_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \cycles_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \cycles_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \cycles_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \cycles_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \cycles_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \cycles_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \cycles_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \cycles_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \cycles_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \cycles_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \cycles_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \cycles_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \cycles_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \cycles_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \cycles_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \cycles_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \cycles_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \cycles_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \cycles_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \cycles_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \cycles_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \cycles_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \cycles_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \cycles_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \cycles_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \cycles_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \cycles_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \cycles_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \cycles_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \cycles_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \cycles_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \cycles_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \cycles_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \cycles_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \cycles_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \cycles_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \cycles_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \cycles_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \cycles_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \cycles_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cycles_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cycles_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cycles_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cycles_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cycles_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cycles_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cycles_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cycles_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cycles_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cycles_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cycles_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cycles_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cycles_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cycles_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cycles_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \^o_rdy\ : STD_LOGIC;
  signal o_rdy_i_10_n_0 : STD_LOGIC;
  signal o_rdy_i_1_n_0 : STD_LOGIC;
  signal o_rdy_i_2_n_0 : STD_LOGIC;
  signal o_rdy_i_3_n_0 : STD_LOGIC;
  signal o_rdy_i_4_n_0 : STD_LOGIC;
  signal o_rdy_i_5_n_0 : STD_LOGIC;
  signal o_rdy_i_6_n_0 : STD_LOGIC;
  signal o_rdy_i_7_n_0 : STD_LOGIC;
  signal o_rdy_i_8_n_0 : STD_LOGIC;
  signal o_rdy_i_9_n_0 : STD_LOGIC;
  signal old : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_cycles1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cycles1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cycles1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cycles_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cycles[0]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cycles[0]_i_5\ : label is "soft_lutpair1";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cycles_reg[0]_i_3\ : label is 11;
  attribute ADDER_THRESHOLD of \cycles_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cycles_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cycles_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cycles_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cycles_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cycles_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cycles_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of o_rdy_i_10 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of o_rdy_i_8 : label is "soft_lutpair1";
begin
  o_rdy <= \^o_rdy\;
cycles1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cycles1_carry_n_0,
      CO(2) => cycles1_carry_n_1,
      CO(1) => cycles1_carry_n_2,
      CO(0) => cycles1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_cycles1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => cycles1_carry_i_1_n_0,
      S(2) => cycles1_carry_i_2_n_0,
      S(1) => cycles1_carry_i_3_n_0,
      S(0) => cycles1_carry_i_4_n_0
    );
\cycles1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cycles1_carry_n_0,
      CO(3 downto 2) => \NLW_cycles1_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => cycles1,
      CO(0) => \cycles1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_cycles1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \cycles1_carry__0_i_1_n_0\,
      S(0) => \cycles1_carry__0_i_2_n_0\
    );
\cycles1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => i_IN(15),
      I1 => old(15),
      O => \cycles1_carry__0_i_1_n_0\
    );
\cycles1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => old(12),
      I1 => i_IN(12),
      I2 => old(13),
      I3 => i_IN(13),
      I4 => i_IN(14),
      I5 => old(14),
      O => \cycles1_carry__0_i_2_n_0\
    );
cycles1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => old(9),
      I1 => i_IN(9),
      I2 => old(10),
      I3 => i_IN(10),
      I4 => i_IN(11),
      I5 => old(11),
      O => cycles1_carry_i_1_n_0
    );
cycles1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => old(6),
      I1 => i_IN(6),
      I2 => old(7),
      I3 => i_IN(7),
      I4 => i_IN(8),
      I5 => old(8),
      O => cycles1_carry_i_2_n_0
    );
cycles1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => old(5),
      I1 => i_IN(5),
      I2 => old(3),
      I3 => i_IN(3),
      I4 => i_IN(4),
      I5 => old(4),
      O => cycles1_carry_i_3_n_0
    );
cycles1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => old(2),
      I1 => i_IN(2),
      I2 => old(0),
      I3 => i_IN(0),
      I4 => i_IN(1),
      I5 => old(1),
      O => cycles1_carry_i_4_n_0
    );
\cycles[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => cycles1,
      I1 => i_rst,
      O => \cycles[0]_i_1_n_0\
    );
\cycles[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => o_rdy_i_2_n_0,
      I1 => o_rdy_i_3_n_0,
      I2 => \cycles[0]_i_4_n_0\,
      I3 => \cycles[0]_i_5_n_0\,
      O => cycles
    );
\cycles[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => cycles_reg(11),
      I1 => cycles_reg(31),
      I2 => cycles_reg(5),
      I3 => cycles_reg(16),
      I4 => o_rdy_i_9_n_0,
      O => \cycles[0]_i_4_n_0\
    );
\cycles[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => cycles_reg(15),
      I1 => cycles_reg(24),
      I2 => cycles_reg(0),
      I3 => cycles_reg(7),
      I4 => o_rdy_i_7_n_0,
      O => \cycles[0]_i_5_n_0\
    );
\cycles[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cycles_reg(0),
      O => \cycles[0]_i_6_n_0\
    );
\cycles_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => cycles,
      D => \cycles_reg[0]_i_3_n_7\,
      Q => cycles_reg(0),
      R => \cycles[0]_i_1_n_0\
    );
\cycles_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cycles_reg[0]_i_3_n_0\,
      CO(2) => \cycles_reg[0]_i_3_n_1\,
      CO(1) => \cycles_reg[0]_i_3_n_2\,
      CO(0) => \cycles_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cycles_reg[0]_i_3_n_4\,
      O(2) => \cycles_reg[0]_i_3_n_5\,
      O(1) => \cycles_reg[0]_i_3_n_6\,
      O(0) => \cycles_reg[0]_i_3_n_7\,
      S(3 downto 1) => cycles_reg(3 downto 1),
      S(0) => \cycles[0]_i_6_n_0\
    );
\cycles_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => cycles,
      D => \cycles_reg[8]_i_1_n_5\,
      Q => cycles_reg(10),
      R => \cycles[0]_i_1_n_0\
    );
\cycles_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => cycles,
      D => \cycles_reg[8]_i_1_n_4\,
      Q => cycles_reg(11),
      R => \cycles[0]_i_1_n_0\
    );
\cycles_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => cycles,
      D => \cycles_reg[12]_i_1_n_7\,
      Q => cycles_reg(12),
      R => \cycles[0]_i_1_n_0\
    );
\cycles_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycles_reg[8]_i_1_n_0\,
      CO(3) => \cycles_reg[12]_i_1_n_0\,
      CO(2) => \cycles_reg[12]_i_1_n_1\,
      CO(1) => \cycles_reg[12]_i_1_n_2\,
      CO(0) => \cycles_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cycles_reg[12]_i_1_n_4\,
      O(2) => \cycles_reg[12]_i_1_n_5\,
      O(1) => \cycles_reg[12]_i_1_n_6\,
      O(0) => \cycles_reg[12]_i_1_n_7\,
      S(3 downto 0) => cycles_reg(15 downto 12)
    );
\cycles_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => cycles,
      D => \cycles_reg[12]_i_1_n_6\,
      Q => cycles_reg(13),
      R => \cycles[0]_i_1_n_0\
    );
\cycles_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => cycles,
      D => \cycles_reg[12]_i_1_n_5\,
      Q => cycles_reg(14),
      R => \cycles[0]_i_1_n_0\
    );
\cycles_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => cycles,
      D => \cycles_reg[12]_i_1_n_4\,
      Q => cycles_reg(15),
      R => \cycles[0]_i_1_n_0\
    );
\cycles_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => cycles,
      D => \cycles_reg[16]_i_1_n_7\,
      Q => cycles_reg(16),
      R => \cycles[0]_i_1_n_0\
    );
\cycles_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycles_reg[12]_i_1_n_0\,
      CO(3) => \cycles_reg[16]_i_1_n_0\,
      CO(2) => \cycles_reg[16]_i_1_n_1\,
      CO(1) => \cycles_reg[16]_i_1_n_2\,
      CO(0) => \cycles_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cycles_reg[16]_i_1_n_4\,
      O(2) => \cycles_reg[16]_i_1_n_5\,
      O(1) => \cycles_reg[16]_i_1_n_6\,
      O(0) => \cycles_reg[16]_i_1_n_7\,
      S(3 downto 0) => cycles_reg(19 downto 16)
    );
\cycles_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => cycles,
      D => \cycles_reg[16]_i_1_n_6\,
      Q => cycles_reg(17),
      R => \cycles[0]_i_1_n_0\
    );
\cycles_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => cycles,
      D => \cycles_reg[16]_i_1_n_5\,
      Q => cycles_reg(18),
      R => \cycles[0]_i_1_n_0\
    );
\cycles_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => cycles,
      D => \cycles_reg[16]_i_1_n_4\,
      Q => cycles_reg(19),
      R => \cycles[0]_i_1_n_0\
    );
\cycles_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => cycles,
      D => \cycles_reg[0]_i_3_n_6\,
      Q => cycles_reg(1),
      R => \cycles[0]_i_1_n_0\
    );
\cycles_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => cycles,
      D => \cycles_reg[20]_i_1_n_7\,
      Q => cycles_reg(20),
      R => \cycles[0]_i_1_n_0\
    );
\cycles_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycles_reg[16]_i_1_n_0\,
      CO(3) => \cycles_reg[20]_i_1_n_0\,
      CO(2) => \cycles_reg[20]_i_1_n_1\,
      CO(1) => \cycles_reg[20]_i_1_n_2\,
      CO(0) => \cycles_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cycles_reg[20]_i_1_n_4\,
      O(2) => \cycles_reg[20]_i_1_n_5\,
      O(1) => \cycles_reg[20]_i_1_n_6\,
      O(0) => \cycles_reg[20]_i_1_n_7\,
      S(3 downto 0) => cycles_reg(23 downto 20)
    );
\cycles_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => cycles,
      D => \cycles_reg[20]_i_1_n_6\,
      Q => cycles_reg(21),
      R => \cycles[0]_i_1_n_0\
    );
\cycles_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => cycles,
      D => \cycles_reg[20]_i_1_n_5\,
      Q => cycles_reg(22),
      R => \cycles[0]_i_1_n_0\
    );
\cycles_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => cycles,
      D => \cycles_reg[20]_i_1_n_4\,
      Q => cycles_reg(23),
      R => \cycles[0]_i_1_n_0\
    );
\cycles_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => cycles,
      D => \cycles_reg[24]_i_1_n_7\,
      Q => cycles_reg(24),
      R => \cycles[0]_i_1_n_0\
    );
\cycles_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycles_reg[20]_i_1_n_0\,
      CO(3) => \cycles_reg[24]_i_1_n_0\,
      CO(2) => \cycles_reg[24]_i_1_n_1\,
      CO(1) => \cycles_reg[24]_i_1_n_2\,
      CO(0) => \cycles_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cycles_reg[24]_i_1_n_4\,
      O(2) => \cycles_reg[24]_i_1_n_5\,
      O(1) => \cycles_reg[24]_i_1_n_6\,
      O(0) => \cycles_reg[24]_i_1_n_7\,
      S(3 downto 0) => cycles_reg(27 downto 24)
    );
\cycles_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => cycles,
      D => \cycles_reg[24]_i_1_n_6\,
      Q => cycles_reg(25),
      R => \cycles[0]_i_1_n_0\
    );
\cycles_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => cycles,
      D => \cycles_reg[24]_i_1_n_5\,
      Q => cycles_reg(26),
      R => \cycles[0]_i_1_n_0\
    );
\cycles_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => cycles,
      D => \cycles_reg[24]_i_1_n_4\,
      Q => cycles_reg(27),
      R => \cycles[0]_i_1_n_0\
    );
\cycles_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => cycles,
      D => \cycles_reg[28]_i_1_n_7\,
      Q => cycles_reg(28),
      R => \cycles[0]_i_1_n_0\
    );
\cycles_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycles_reg[24]_i_1_n_0\,
      CO(3) => \NLW_cycles_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \cycles_reg[28]_i_1_n_1\,
      CO(1) => \cycles_reg[28]_i_1_n_2\,
      CO(0) => \cycles_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cycles_reg[28]_i_1_n_4\,
      O(2) => \cycles_reg[28]_i_1_n_5\,
      O(1) => \cycles_reg[28]_i_1_n_6\,
      O(0) => \cycles_reg[28]_i_1_n_7\,
      S(3 downto 0) => cycles_reg(31 downto 28)
    );
\cycles_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => cycles,
      D => \cycles_reg[28]_i_1_n_6\,
      Q => cycles_reg(29),
      R => \cycles[0]_i_1_n_0\
    );
\cycles_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => cycles,
      D => \cycles_reg[0]_i_3_n_5\,
      Q => cycles_reg(2),
      R => \cycles[0]_i_1_n_0\
    );
\cycles_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => cycles,
      D => \cycles_reg[28]_i_1_n_5\,
      Q => cycles_reg(30),
      R => \cycles[0]_i_1_n_0\
    );
\cycles_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => cycles,
      D => \cycles_reg[28]_i_1_n_4\,
      Q => cycles_reg(31),
      R => \cycles[0]_i_1_n_0\
    );
\cycles_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => cycles,
      D => \cycles_reg[0]_i_3_n_4\,
      Q => cycles_reg(3),
      R => \cycles[0]_i_1_n_0\
    );
\cycles_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => cycles,
      D => \cycles_reg[4]_i_1_n_7\,
      Q => cycles_reg(4),
      R => \cycles[0]_i_1_n_0\
    );
\cycles_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycles_reg[0]_i_3_n_0\,
      CO(3) => \cycles_reg[4]_i_1_n_0\,
      CO(2) => \cycles_reg[4]_i_1_n_1\,
      CO(1) => \cycles_reg[4]_i_1_n_2\,
      CO(0) => \cycles_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cycles_reg[4]_i_1_n_4\,
      O(2) => \cycles_reg[4]_i_1_n_5\,
      O(1) => \cycles_reg[4]_i_1_n_6\,
      O(0) => \cycles_reg[4]_i_1_n_7\,
      S(3 downto 0) => cycles_reg(7 downto 4)
    );
\cycles_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => cycles,
      D => \cycles_reg[4]_i_1_n_6\,
      Q => cycles_reg(5),
      R => \cycles[0]_i_1_n_0\
    );
\cycles_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => cycles,
      D => \cycles_reg[4]_i_1_n_5\,
      Q => cycles_reg(6),
      R => \cycles[0]_i_1_n_0\
    );
\cycles_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => cycles,
      D => \cycles_reg[4]_i_1_n_4\,
      Q => cycles_reg(7),
      R => \cycles[0]_i_1_n_0\
    );
\cycles_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => cycles,
      D => \cycles_reg[8]_i_1_n_7\,
      Q => cycles_reg(8),
      R => \cycles[0]_i_1_n_0\
    );
\cycles_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cycles_reg[4]_i_1_n_0\,
      CO(3) => \cycles_reg[8]_i_1_n_0\,
      CO(2) => \cycles_reg[8]_i_1_n_1\,
      CO(1) => \cycles_reg[8]_i_1_n_2\,
      CO(0) => \cycles_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cycles_reg[8]_i_1_n_4\,
      O(2) => \cycles_reg[8]_i_1_n_5\,
      O(1) => \cycles_reg[8]_i_1_n_6\,
      O(0) => \cycles_reg[8]_i_1_n_7\,
      S(3 downto 0) => cycles_reg(11 downto 8)
    );
\cycles_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => cycles,
      D => \cycles_reg[8]_i_1_n_6\,
      Q => cycles_reg(9),
      R => \cycles[0]_i_1_n_0\
    );
o_rdy_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAFFFFFFFFFFFF"
    )
        port map (
      I0 => \^o_rdy\,
      I1 => o_rdy_i_2_n_0,
      I2 => o_rdy_i_3_n_0,
      I3 => o_rdy_i_4_n_0,
      I4 => cycles1,
      I5 => i_rst,
      O => o_rdy_i_1_n_0
    );
o_rdy_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cycles_reg(16),
      I1 => cycles_reg(5),
      I2 => cycles_reg(31),
      I3 => cycles_reg(11),
      O => o_rdy_i_10_n_0
    );
o_rdy_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => cycles_reg(12),
      I1 => cycles_reg(25),
      I2 => cycles_reg(1),
      I3 => cycles_reg(2),
      I4 => o_rdy_i_5_n_0,
      O => o_rdy_i_2_n_0
    );
o_rdy_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => cycles_reg(8),
      I1 => cycles_reg(29),
      I2 => cycles_reg(4),
      I3 => cycles_reg(3),
      I4 => o_rdy_i_6_n_0,
      O => o_rdy_i_3_n_0
    );
o_rdy_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => o_rdy_i_7_n_0,
      I1 => o_rdy_i_8_n_0,
      I2 => o_rdy_i_9_n_0,
      I3 => o_rdy_i_10_n_0,
      O => o_rdy_i_4_n_0
    );
o_rdy_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cycles_reg(26),
      I1 => cycles_reg(14),
      I2 => cycles_reg(23),
      I3 => cycles_reg(6),
      O => o_rdy_i_5_n_0
    );
o_rdy_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cycles_reg(30),
      I1 => cycles_reg(10),
      I2 => cycles_reg(21),
      I3 => cycles_reg(22),
      O => o_rdy_i_6_n_0
    );
o_rdy_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cycles_reg(27),
      I1 => cycles_reg(13),
      I2 => cycles_reg(19),
      I3 => cycles_reg(20),
      O => o_rdy_i_7_n_0
    );
o_rdy_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => cycles_reg(7),
      I1 => cycles_reg(0),
      I2 => cycles_reg(24),
      I3 => cycles_reg(15),
      O => o_rdy_i_8_n_0
    );
o_rdy_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cycles_reg(28),
      I1 => cycles_reg(9),
      I2 => cycles_reg(18),
      I3 => cycles_reg(17),
      O => o_rdy_i_9_n_0
    );
o_rdy_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => o_rdy_i_1_n_0,
      Q => \^o_rdy\,
      R => '0'
    );
\old_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => i_IN(0),
      Q => old(0),
      R => '0'
    );
\old_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => i_IN(10),
      Q => old(10),
      R => '0'
    );
\old_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => i_IN(11),
      Q => old(11),
      R => '0'
    );
\old_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => i_IN(12),
      Q => old(12),
      R => '0'
    );
\old_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => i_IN(13),
      Q => old(13),
      R => '0'
    );
\old_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => i_IN(14),
      Q => old(14),
      R => '0'
    );
\old_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => i_IN(15),
      Q => old(15),
      R => '0'
    );
\old_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => i_IN(1),
      Q => old(1),
      R => '0'
    );
\old_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => i_IN(2),
      Q => old(2),
      R => '0'
    );
\old_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => i_IN(3),
      Q => old(3),
      R => '0'
    );
\old_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => i_IN(4),
      Q => old(4),
      R => '0'
    );
\old_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => i_IN(5),
      Q => old(5),
      R => '0'
    );
\old_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => i_IN(6),
      Q => old(6),
      R => '0'
    );
\old_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => i_IN(7),
      Q => old(7),
      R => '0'
    );
\old_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => i_IN(8),
      Q => old(8),
      R => '0'
    );
\old_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => i_IN(9),
      Q => old(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ready_checker_0_0 is
  port (
    i_clk : in STD_LOGIC;
    i_IN : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_rst : in STD_LOGIC;
    o_rdy : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_ready_checker_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_ready_checker_0_0 : entity is "design_1_ready_checker_0_0,ready_checker,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_ready_checker_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_ready_checker_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_ready_checker_0_0 : entity is "ready_checker,Vivado 2020.2";
end design_1_ready_checker_0_0;

architecture STRUCTURE of design_1_ready_checker_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_clk : signal is "xilinx.com:signal:clock:1.0 i_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_clk : signal is "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_rst : signal is "xilinx.com:signal:reset:1.0 i_rst RST";
  attribute X_INTERFACE_PARAMETER of i_rst : signal is "XIL_INTERFACENAME i_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.design_1_ready_checker_0_0_ready_checker
     port map (
      i_IN(15 downto 0) => i_IN(15 downto 0),
      i_clk => i_clk,
      i_rst => i_rst,
      o_rdy => o_rdy
    );
end STRUCTURE;
