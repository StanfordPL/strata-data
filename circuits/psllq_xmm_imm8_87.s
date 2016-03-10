  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vxorps %xmm3, %xmm3, %xmm0  #  1     0    4      OPC=vxorps_xmm_xmm_xmm  
  pmovzxwq %xmm0, %xmm1       #  2     0x4  5      OPC=pmovzxwq_xmm_xmm    
  retq                        #  3     0x9  1      OPC=retq                
                                                                           
.size target, .-target