--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Tue May 14 14:17:43 2019
--Host        : JorisP running 64-bit major release  (build 9200)
--Command     : generate_target top_zynq_dma_wrapper.bd
--Design      : top_zynq_dma_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_zynq_dma_wrapper is
  port (
    Leds_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    UART_0_rxd : in STD_LOGIC;
    UART_0_txd : out STD_LOGIC
  );
end top_zynq_dma_wrapper;

architecture STRUCTURE of top_zynq_dma_wrapper is
  component top_zynq_dma is
  port (
    UART_0_rxd : in STD_LOGIC;
    UART_0_txd : out STD_LOGIC;
    Leds_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component top_zynq_dma;
begin
top_zynq_dma_i: component top_zynq_dma
     port map (
      Leds_tri_o(3 downto 0) => Leds_tri_o(3 downto 0),
      UART_0_rxd => UART_0_rxd,
      UART_0_txd => UART_0_txd
    );
end STRUCTURE;
