  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  pandn %xmm1, %xmm1     #  1     0    4      OPC=pandn_xmm_xmm     
  vmovdqu %xmm1, %xmm5   #  2     0x4  4      OPC=vmovdqu_xmm_xmm   
  pmovzxwq %xmm5, %xmm1  #  3     0x8  5      OPC=pmovzxwq_xmm_xmm  
  retq                   #  4     0xd  1      OPC=retq              
                                                                    
.size target, .-target
