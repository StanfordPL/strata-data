  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  pmovzxdq %xmm1, %xmm1  #  1     0    5      OPC=pmovzxdq_xmm_xmm  
  subsd %xmm1, %xmm1     #  2     0x5  4      OPC=subsd_xmm_xmm     
  movlhps %xmm1, %xmm1   #  3     0x9  3      OPC=movlhps_xmm_xmm   
  retq                   #  4     0xc  1      OPC=retq              
                                                                    
.size target, .-target
