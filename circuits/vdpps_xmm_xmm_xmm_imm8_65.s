  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                          
.target:                                          #        0     0      OPC=<label>                     
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label                 
  vfmsubadd132ps %xmm3, %xmm4, %xmm2              #  2     0x5   5      OPC=vfmsubadd132ps_xmm_xmm_xmm  
  pxor %xmm6, %xmm2                               #  3     0xa   4      OPC=pxor_xmm_xmm                
  vxorpd %xmm14, %xmm14, %xmm1                    #  4     0xe   5      OPC=vxorpd_xmm_xmm_xmm          
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  5     0x13  5      OPC=callq_label                 
  addps %xmm10, %xmm1                             #  6     0x18  4      OPC=addps_xmm_xmm               
  retq                                            #  7     0x1c  1      OPC=retq                        
                                                                                                        
.size target, .-target
