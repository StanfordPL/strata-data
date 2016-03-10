  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                      
.target:                           #        0    0      OPC=<label>                 
  movsldup %xmm2, %xmm14           #  1     0    5      OPC=movsldup_xmm_xmm        
  vpunpckhdq %xmm3, %xmm14, %xmm1  #  2     0x5  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movsd %xmm2, %xmm1               #  3     0x9  4      OPC=movsd_xmm_xmm           
  retq                             #  4     0xd  1      OPC=retq                    
                                                                                    
.size target, .-target
