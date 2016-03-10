  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                          
.target:                                          #        0     0      OPC=<label>                     
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label                 
  vdivsd %xmm2, %xmm6, %xmm1                      #  2     0x5   4      OPC=vdivsd_xmm_xmm_xmm          
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0x9   5      OPC=callq_label                 
  vfmsubadd213pd %xmm7, %xmm11, %xmm11            #  4     0xe   5      OPC=vfmsubadd213pd_xmm_xmm_xmm  
  vbroadcastss %xmm5, %ymm9                       #  5     0x13  5      OPC=vbroadcastss_ymm_xmm        
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x18  5      OPC=callq_label                 
  retq                                            #  7     0x1d  1      OPC=retq                        
                                                                                                        
.size target, .-target
