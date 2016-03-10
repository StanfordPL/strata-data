  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                          
.target:                                          #        0     0      OPC=<label>                     
  xorpd %xmm3, %xmm3                              #  1     0     4      OPC=xorpd_xmm_xmm               
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label                 
  vfmaddsub213pd %xmm3, %xmm1, %xmm2              #  3     0x9   5      OPC=vfmaddsub213pd_xmm_xmm_xmm  
  vfmsubadd213pd %xmm2, %xmm8, %xmm11             #  4     0xe   5      OPC=vfmsubadd213pd_xmm_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1             #  5     0x13  5      OPC=callq_label                 
  retq                                            #  6     0x18  1      OPC=retq                        
                                                                                                        
.size target, .-target
