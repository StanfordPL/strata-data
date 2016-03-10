  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                  
.target:                       #        0    0      OPC=<label>             
  vpandn %xmm1, %xmm1, %xmm15  #  1     0    4      OPC=vpandn_xmm_xmm_xmm  
  vmovupd %xmm15, %xmm0        #  2     0x4  5      OPC=vmovupd_xmm_xmm     
  pmovzxbq %xmm0, %xmm1        #  3     0x9  5      OPC=pmovzxbq_xmm_xmm    
  retq                         #  4     0xe  1      OPC=retq                
                                                                            
.size target, .-target
