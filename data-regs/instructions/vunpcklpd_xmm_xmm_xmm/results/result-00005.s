  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                    
.target:                      #        0    0      OPC=<label>               
  vmovapd %xmm2, %xmm1        #  1     0    4      OPC=vmovapd_xmm_xmm       
  vpbroadcastq %xmm3, %xmm11  #  2     0x4  5      OPC=vpbroadcastq_xmm_xmm  
  unpcklpd %xmm11, %xmm1      #  3     0x9  5      OPC=unpcklpd_xmm_xmm      
  retq                        #  4     0xe  1      OPC=retq                  
                                                                             
.size target, .-target
