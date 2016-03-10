  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vunpcklpd %xmm1, %xmm8, %xmm4                   #  2     0x5   4      OPC=vunpcklpd_xmm_xmm_xmm  
  vxorps %xmm2, %xmm4, %xmm5                      #  3     0x9   4      OPC=vxorps_xmm_xmm_xmm     
  unpcklpd %xmm5, %xmm1                           #  4     0xd   4      OPC=unpcklpd_xmm_xmm       
  retq                                            #  5     0x11  1      OPC=retq                   
                                                                                                   
.size target, .-target
