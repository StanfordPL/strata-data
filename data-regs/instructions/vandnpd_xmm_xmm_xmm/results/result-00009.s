  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vpor %xmm2, %xmm2, %xmm1    #  1     0    4      OPC=vpor_xmm_xmm_xmm    
  vmaxss %xmm1, %xmm2, %xmm0  #  2     0x4  4      OPC=vmaxss_xmm_xmm_xmm  
  vpandn %xmm3, %xmm0, %xmm1  #  3     0x8  4      OPC=vpandn_xmm_xmm_xmm  
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
