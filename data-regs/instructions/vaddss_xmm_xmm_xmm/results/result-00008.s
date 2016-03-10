  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vunpcklpd %xmm7, %xmm4, %xmm1                 #  2     0x5   4      OPC=vunpcklpd_xmm_xmm_xmm  
  addss %xmm4, %xmm2                            #  3     0x9   4      OPC=addss_xmm_xmm          
  callq .move_128_064_xmm2_r8_r9                #  4     0xd   5      OPC=callq_label            
  callq .move_064_128_r8_r9_xmm1                #  5     0x12  5      OPC=callq_label            
  retq                                          #  6     0x17  1      OPC=retq                   
                                                                                                 
.size target, .-target
