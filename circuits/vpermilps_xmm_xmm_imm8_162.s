  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  vmovsldup %xmm2, %xmm1                        #  1     0     4      OPC=vmovsldup_xmm_xmm      
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label            
  movdqu %xmm7, %xmm0                           #  3     0x9   4      OPC=movdqu_xmm_xmm         
  movupd %xmm4, %xmm3                           #  4     0xd   4      OPC=movupd_xmm_xmm         
  vunpcklps %xmm3, %xmm0, %xmm3                 #  5     0x11  4      OPC=vunpcklps_xmm_xmm_xmm  
  movss %xmm3, %xmm1                            #  6     0x15  4      OPC=movss_xmm_xmm          
  retq                                          #  7     0x19  1      OPC=retq                   
                                                                                                 
.size target, .-target
