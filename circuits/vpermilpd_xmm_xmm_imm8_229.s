  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                     
.target:                            #        0     0      OPC=<label>                
  callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label            
  vzeroall                          #  2     0x5   3      OPC=vzeroall               
  callq .move_064_128_r10_r11_xmm3  #  3     0x8   5      OPC=callq_label            
  vmovlhps %xmm3, %xmm0, %xmm9      #  4     0xd   4      OPC=vmovlhps_xmm_xmm_xmm   
  vunpckhpd %xmm9, %xmm3, %xmm1     #  5     0x11  5      OPC=vunpckhpd_xmm_xmm_xmm  
  retq                              #  6     0x16  1      OPC=retq                   
                                                                                     
.size target, .-target
