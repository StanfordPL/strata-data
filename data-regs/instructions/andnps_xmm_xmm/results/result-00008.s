  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                 #  Line  RIP  Bytes  Opcode             
.target:               #        0    0      OPC=<label>        
  vmovq %xmm1, %xmm12  #  1     0    4      OPC=vmovq_xmm_xmm  
  por %xmm12, %xmm2    #  2     0x4  5      OPC=por_xmm_xmm    
  pandn %xmm2, %xmm1   #  3     0x9  4      OPC=pandn_xmm_xmm  
  retq                 #  4     0xd  1      OPC=retq           
                                                               
.size target, .-target
