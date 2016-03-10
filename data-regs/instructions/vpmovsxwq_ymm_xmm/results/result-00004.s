  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  pmovsxwd %xmm2, %xmm5   #  1     0    5      OPC=pmovsxwd_xmm_xmm   
  vpmovsxwd %xmm5, %ymm7  #  2     0x5  5      OPC=vpmovsxwd_ymm_xmm  
  vmovdqu %ymm7, %ymm1    #  3     0xa  4      OPC=vmovdqu_ymm_ymm    
  retq                    #  4     0xe  1      OPC=retq               
                                                                      
.size target, .-target
