  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  unpcklpd %xmm2, %xmm6                         #  2     0x5   4      OPC=unpcklpd_xmm_xmm       
  vunpcklpd %xmm7, %xmm4, %xmm1                 #  3     0x9   4      OPC=vunpcklpd_xmm_xmm_xmm  
  vunpcklpd %xmm4, %xmm6, %xmm11                #  4     0xd   4      OPC=vunpcklpd_xmm_xmm_xmm  
  vphaddd %xmm1, %xmm11, %xmm1                  #  5     0x11  5      OPC=vphaddd_xmm_xmm_xmm    
  retq                                          #  6     0x16  1      OPC=retq                   
                                                                                                 
.size target, .-target
