  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP  Bytes  Opcode                  
.target:                        #        0    0      OPC=<label>             
  vpmovsxwq %xmm1, %ymm10       #  1     0    5      OPC=vpmovsxwq_ymm_xmm   
  vpandn %xmm10, %xmm10, %xmm1  #  2     0x5  5      OPC=vpandn_xmm_xmm_xmm  
  retq                          #  3     0xa  1      OPC=retq                
                                                                             
.size target, .-target
