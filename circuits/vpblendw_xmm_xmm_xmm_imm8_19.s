  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  sqrtss %xmm3, %xmm2                           #  2     0x5   4      OPC=sqrtss_xmm_xmm     
  movss %xmm4, %xmm2                            #  3     0x9   4      OPC=movss_xmm_xmm      
  movd %xmm6, %edx                              #  4     0xd   4      OPC=movd_r32_xmm       
  vorpd %xmm5, %xmm6, %xmm1                     #  5     0x11  4      OPC=vorpd_xmm_xmm_xmm  
  callq .move_128_064_xmm2_r8_r9                #  6     0x15  5      OPC=callq_label        
  movw %dx, %r9w                                #  7     0x1a  4      OPC=movw_r16_r16       
  callq .move_064_128_r8_r9_xmm1                #  8     0x1e  5      OPC=callq_label        
  retq                                          #  9     0x23  1      OPC=retq               
                                                                                             
.size target, .-target
