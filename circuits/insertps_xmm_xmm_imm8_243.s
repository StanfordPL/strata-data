  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                     
.target:                            #        0     0      OPC=<label>                
  vxorpd %xmm10, %xmm10, %xmm9      #  1     0     5      OPC=vxorpd_xmm_xmm_xmm     
  movsldup %xmm1, %xmm4             #  2     0x5   4      OPC=movsldup_xmm_xmm       
  vunpckhps %xmm2, %xmm4, %xmm2     #  3     0x9   4      OPC=vunpckhps_xmm_xmm_xmm  
  cvtss2sd %xmm9, %xmm2             #  4     0xd   5      OPC=cvtss2sd_xmm_xmm       
  callq .move_128_064_xmm2_r10_r11  #  5     0x12  5      OPC=callq_label            
  callq .move_064_128_r10_r11_xmm1  #  6     0x17  5      OPC=callq_label            
  retq                              #  7     0x1c  1      OPC=retq                   
                                                                                     
.size target, .-target
