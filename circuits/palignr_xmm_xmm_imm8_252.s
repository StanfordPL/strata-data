  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  pxor %xmm1, %xmm1      #  1     0    4      OPC=pxor_xmm_xmm      
  movdqu %xmm1, %xmm0    #  2     0x4  4      OPC=movdqu_xmm_xmm    
  pmovzxbq %xmm0, %xmm1  #  3     0x8  5      OPC=pmovzxbq_xmm_xmm  
  retq                   #  4     0xd  1      OPC=retq              
                                                                    
.size target, .-target
