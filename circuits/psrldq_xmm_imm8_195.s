  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  xorps %xmm1, %xmm1     #  1     0    3      OPC=xorps_xmm_xmm     
  pmovzxwq %xmm1, %xmm1  #  2     0x3  5      OPC=pmovzxwq_xmm_xmm  
  retq                   #  3     0x8  1      OPC=retq              
                                                                    
.size target, .-target
