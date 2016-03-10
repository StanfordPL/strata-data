  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP  Bytes  Opcode                  
.target:                        #        0    0      OPC=<label>             
  vxorps %xmm12, %xmm12, %xmm4  #  1     0    5      OPC=vxorps_xmm_xmm_xmm  
  pmovzxwd %xmm4, %xmm1         #  2     0x5  5      OPC=pmovzxwd_xmm_xmm    
  retq                          #  3     0xa  1      OPC=retq                
                                                                             
.size target, .-target
