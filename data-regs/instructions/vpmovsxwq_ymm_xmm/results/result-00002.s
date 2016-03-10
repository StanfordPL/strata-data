  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vpmovsxwd %xmm2, %ymm7  #  1     0    5      OPC=vpmovsxwd_ymm_xmm  
  vpmovsxwd %xmm7, %ymm1  #  2     0x5  5      OPC=vpmovsxwd_ymm_xmm  
  retq                    #  3     0xa  1      OPC=retq               
                                                                      
.size target, .-target
