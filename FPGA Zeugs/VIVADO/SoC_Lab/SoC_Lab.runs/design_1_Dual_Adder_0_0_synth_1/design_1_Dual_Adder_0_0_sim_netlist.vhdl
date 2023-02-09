-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Feb  9 10:48:10 2023
-- Host        : DESKTOP-PPIVJC1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Dual_Adder_0_0_sim_netlist.vhdl
-- Design      : design_1_Dual_Adder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    i_A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    o_Sum_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_Sum_1 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_Dual_Adder_0_0,Dual_Adder,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Dual_Adder,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \inst/adder0/genblk1[10].accuOneBitAdder/o_Cout1__0\ : STD_LOGIC;
  signal \inst/adder0/genblk1[11].accuOneBitAdder/o_Cout1__0\ : STD_LOGIC;
  signal \inst/adder0/genblk1[14].accuOneBitAdder/o_Cout1__0\ : STD_LOGIC;
  signal \inst/adder0/genblk1[7].accuOneBitAdder/o_Cout1__0\ : STD_LOGIC;
  signal \inst/adder0/genblk1[9].accuOneBitAdder/o_Cout1__0\ : STD_LOGIC;
  signal \inst/adder0/w_carryChain_1\ : STD_LOGIC;
  signal \inst/adder0/w_carryChain_10\ : STD_LOGIC;
  signal \inst/adder0/w_carryChain_3\ : STD_LOGIC;
  signal \inst/adder0/w_carryChain_8\ : STD_LOGIC;
  signal \inst/adder1/w_carryChain_2\ : STD_LOGIC;
  signal \inst/adder1/w_carryChain_4\ : STD_LOGIC;
  signal \inst/adder1/w_carryChain_6\ : STD_LOGIC;
  signal \^o_sum_0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \o_Sum_0[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \o_Sum_0[11]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \o_Sum_0[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \o_Sum_0[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \o_Sum_0[15]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \^o_sum_1\ : STD_LOGIC_VECTOR ( 15 downto 4 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o_Sum_0[11]_INST_0_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \o_Sum_0[11]_INST_0_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o_Sum_0[14]_INST_0_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o_Sum_0[14]_INST_0_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o_Sum_0[15]_INST_0_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \o_Sum_0[9]_INST_0_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \o_Sum_1[14]_INST_0_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o_Sum_1[15]_INST_0_i_1\ : label is "soft_lutpair0";
begin
  o_Sum_0(15 downto 0) <= \^o_sum_0\(15 downto 0);
  o_Sum_1(15 downto 4) <= \^o_sum_1\(15 downto 4);
  o_Sum_1(3 downto 0) <= \^o_sum_0\(3 downto 0);
\o_Sum_0[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969696"
    )
        port map (
      I0 => i_A(10),
      I1 => i_B(10),
      I2 => \inst/adder1/w_carryChain_2\,
      I3 => \o_Sum_0[11]_INST_0_i_3_n_0\,
      I4 => \o_Sum_0[11]_INST_0_i_4_n_0\,
      O => \^o_sum_0\(10)
    );
\o_Sum_0[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555A566A566A566A"
    )
        port map (
      I0 => \inst/adder0/genblk1[11].accuOneBitAdder/o_Cout1__0\,
      I1 => \inst/adder1/w_carryChain_2\,
      I2 => i_B(10),
      I3 => i_A(10),
      I4 => \o_Sum_0[11]_INST_0_i_3_n_0\,
      I5 => \o_Sum_0[11]_INST_0_i_4_n_0\,
      O => \^o_sum_0\(11)
    );
\o_Sum_0[11]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_B(11),
      I1 => i_A(11),
      O => \inst/adder0/genblk1[11].accuOneBitAdder/o_Cout1__0\
    );
\o_Sum_0[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF880F8800000"
    )
        port map (
      I0 => i_A(7),
      I1 => i_B(7),
      I2 => i_B(8),
      I3 => i_A(8),
      I4 => i_B(9),
      I5 => i_A(9),
      O => \inst/adder1/w_carryChain_2\
    );
\o_Sum_0[11]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0660"
    )
        port map (
      I0 => i_A(9),
      I1 => i_B(9),
      I2 => i_A(8),
      I3 => i_B(8),
      O => \o_Sum_0[11]_INST_0_i_3_n_0\
    );
\o_Sum_0[11]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \inst/adder0/w_carryChain_3\,
      I1 => i_A(7),
      I2 => i_B(7),
      O => \o_Sum_0[11]_INST_0_i_4_n_0\
    );
\o_Sum_0[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => i_A(12),
      I1 => i_B(12),
      I2 => \inst/adder0/w_carryChain_8\,
      O => \^o_sum_0\(12)
    );
\o_Sum_0[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => i_A(13),
      I1 => i_B(13),
      I2 => i_A(12),
      I3 => i_B(12),
      I4 => \inst/adder0/w_carryChain_8\,
      O => \^o_sum_0\(13)
    );
\o_Sum_0[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555656AA556A6AAA"
    )
        port map (
      I0 => \inst/adder0/genblk1[14].accuOneBitAdder/o_Cout1__0\,
      I1 => i_A(12),
      I2 => i_B(12),
      I3 => i_B(13),
      I4 => i_A(13),
      I5 => \inst/adder0/w_carryChain_8\,
      O => \^o_sum_0\(14)
    );
\o_Sum_0[14]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_B(14),
      I1 => i_A(14),
      O => \inst/adder0/genblk1[14].accuOneBitAdder/o_Cout1__0\
    );
\o_Sum_0[14]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => \inst/adder0/w_carryChain_3\,
      I1 => \inst/adder0/genblk1[7].accuOneBitAdder/o_Cout1__0\,
      I2 => \inst/adder0/genblk1[11].accuOneBitAdder/o_Cout1__0\,
      I3 => \inst/adder0/genblk1[10].accuOneBitAdder/o_Cout1__0\,
      I4 => \o_Sum_0[11]_INST_0_i_3_n_0\,
      I5 => \inst/adder1/w_carryChain_4\,
      O => \inst/adder0/w_carryChain_8\
    );
\o_Sum_0[14]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_B(7),
      I1 => i_A(7),
      O => \inst/adder0/genblk1[7].accuOneBitAdder/o_Cout1__0\
    );
\o_Sum_0[14]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_B(10),
      I1 => i_A(10),
      O => \inst/adder0/genblk1[10].accuOneBitAdder/o_Cout1__0\
    );
\o_Sum_0[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => i_A(15),
      I1 => i_B(15),
      I2 => i_A(14),
      I3 => i_B(14),
      I4 => \inst/adder0/w_carryChain_10\,
      O => \^o_sum_0\(15)
    );
\o_Sum_0[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF800000"
    )
        port map (
      I0 => \inst/adder0/w_carryChain_3\,
      I1 => \o_Sum_0[15]_INST_0_i_2_n_0\,
      I2 => \o_Sum_0[11]_INST_0_i_3_n_0\,
      I3 => \inst/adder1/w_carryChain_4\,
      I4 => \o_Sum_0[15]_INST_0_i_3_n_0\,
      I5 => \o_Sum_0[15]_INST_0_i_4_n_0\,
      O => \inst/adder0/w_carryChain_10\
    );
\o_Sum_0[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000066006600000"
    )
        port map (
      I0 => i_B(10),
      I1 => i_A(10),
      I2 => i_B(11),
      I3 => i_A(11),
      I4 => i_A(7),
      I5 => i_B(7),
      O => \o_Sum_0[15]_INST_0_i_2_n_0\
    );
\o_Sum_0[15]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0660"
    )
        port map (
      I0 => i_A(13),
      I1 => i_B(13),
      I2 => i_A(12),
      I3 => i_B(12),
      O => \o_Sum_0[15]_INST_0_i_3_n_0\
    );
\o_Sum_0[15]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F880"
    )
        port map (
      I0 => i_A(12),
      I1 => i_B(12),
      I2 => i_B(13),
      I3 => i_A(13),
      O => \o_Sum_0[15]_INST_0_i_4_n_0\
    );
\o_Sum_0[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9666"
    )
        port map (
      I0 => i_A(4),
      I1 => i_B(4),
      I2 => i_B(3),
      I3 => i_A(3),
      O => \^o_sum_0\(4)
    );
\o_Sum_0[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9996966696669666"
    )
        port map (
      I0 => i_A(5),
      I1 => i_B(5),
      I2 => i_A(4),
      I3 => i_B(4),
      I4 => i_B(3),
      I5 => i_A(3),
      O => \^o_sum_0\(5)
    );
\o_Sum_0[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => i_A(6),
      I1 => i_B(6),
      I2 => i_A(5),
      I3 => i_B(5),
      I4 => \inst/adder0/w_carryChain_1\,
      O => \^o_sum_0\(6)
    );
\o_Sum_0[6]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F880"
    )
        port map (
      I0 => i_A(3),
      I1 => i_B(3),
      I2 => i_B(4),
      I3 => i_A(4),
      O => \inst/adder0/w_carryChain_1\
    );
\o_Sum_0[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => i_A(7),
      I1 => i_B(7),
      I2 => \inst/adder0/w_carryChain_3\,
      O => \^o_sum_0\(7)
    );
\o_Sum_0[7]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCE8E8C0"
    )
        port map (
      I0 => \inst/adder0/w_carryChain_1\,
      I1 => i_A(6),
      I2 => i_B(6),
      I3 => i_B(5),
      I4 => i_A(5),
      O => \inst/adder0/w_carryChain_3\
    );
\o_Sum_0[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969696"
    )
        port map (
      I0 => i_A(8),
      I1 => i_B(8),
      I2 => \o_Sum_0[11]_INST_0_i_4_n_0\,
      I3 => i_A(7),
      I4 => i_B(7),
      O => \^o_sum_0\(8)
    );
\o_Sum_0[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555AA556A6AAA"
    )
        port map (
      I0 => \inst/adder0/genblk1[9].accuOneBitAdder/o_Cout1__0\,
      I1 => i_A(7),
      I2 => i_B(7),
      I3 => i_B(8),
      I4 => i_A(8),
      I5 => \o_Sum_0[11]_INST_0_i_4_n_0\,
      O => \^o_sum_0\(9)
    );
\o_Sum_0[9]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_B(9),
      I1 => i_A(9),
      O => \inst/adder0/genblk1[9].accuOneBitAdder/o_Cout1__0\
    );
\o_Sum_1[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_A(0),
      I1 => i_B(0),
      O => \^o_sum_0\(0)
    );
\o_Sum_1[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => i_A(10),
      I1 => i_B(10),
      I2 => \inst/adder1/w_carryChain_2\,
      O => \^o_sum_1\(10)
    );
\o_Sum_1[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => i_A(11),
      I1 => i_B(11),
      I2 => i_A(10),
      I3 => i_B(10),
      I4 => \inst/adder1/w_carryChain_2\,
      O => \^o_sum_1\(11)
    );
\o_Sum_1[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => i_A(12),
      I1 => i_B(12),
      I2 => \inst/adder1/w_carryChain_4\,
      O => \^o_sum_1\(12)
    );
\o_Sum_1[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => i_A(13),
      I1 => i_B(13),
      I2 => i_A(12),
      I3 => i_B(12),
      I4 => \inst/adder1/w_carryChain_4\,
      O => \^o_sum_1\(13)
    );
\o_Sum_1[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555656AA556A6AAA"
    )
        port map (
      I0 => \inst/adder0/genblk1[14].accuOneBitAdder/o_Cout1__0\,
      I1 => i_A(12),
      I2 => i_B(12),
      I3 => i_B(13),
      I4 => i_A(13),
      I5 => \inst/adder1/w_carryChain_4\,
      O => \^o_sum_1\(14)
    );
\o_Sum_1[14]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => \inst/adder1/w_carryChain_2\,
      I1 => i_B(10),
      I2 => i_A(10),
      I3 => i_B(11),
      I4 => i_A(11),
      O => \inst/adder1/w_carryChain_4\
    );
\o_Sum_1[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => i_A(15),
      I1 => i_B(15),
      I2 => i_A(14),
      I3 => i_B(14),
      I4 => \inst/adder1/w_carryChain_6\,
      O => \^o_sum_1\(15)
    );
\o_Sum_1[15]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCE8E8C0"
    )
        port map (
      I0 => \inst/adder1/w_carryChain_4\,
      I1 => i_A(13),
      I2 => i_B(13),
      I3 => i_B(12),
      I4 => i_A(12),
      O => \inst/adder1/w_carryChain_6\
    );
\o_Sum_1[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_A(1),
      I1 => i_B(1),
      O => \^o_sum_0\(1)
    );
\o_Sum_1[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_A(2),
      I1 => i_B(2),
      O => \^o_sum_0\(2)
    );
\o_Sum_1[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_B(3),
      I1 => i_A(3),
      O => \^o_sum_0\(3)
    );
\o_Sum_1[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_B(4),
      I1 => i_A(4),
      O => \^o_sum_1\(4)
    );
\o_Sum_1[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_B(5),
      I1 => i_A(5),
      O => \^o_sum_1\(5)
    );
\o_Sum_1[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_B(6),
      I1 => i_A(6),
      O => \^o_sum_1\(6)
    );
\o_Sum_1[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_B(7),
      I1 => i_A(7),
      O => \^o_sum_1\(7)
    );
\o_Sum_1[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9666"
    )
        port map (
      I0 => i_A(8),
      I1 => i_B(8),
      I2 => i_B(7),
      I3 => i_A(7),
      O => \^o_sum_1\(8)
    );
\o_Sum_1[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9996966696669666"
    )
        port map (
      I0 => i_A(9),
      I1 => i_B(9),
      I2 => i_A(8),
      I3 => i_B(8),
      I4 => i_B(7),
      I5 => i_A(7),
      O => \^o_sum_1\(9)
    );
end STRUCTURE;
