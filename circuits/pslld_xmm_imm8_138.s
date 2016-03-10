  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  vmovddup %xmm1, %xmm9  #  1     0    4      OPC=vmovddup_xmm_xmm  
  pandn %xmm9, %xmm1     #  2     0x4  5      OPC=pandn_xmm_xmm     
  unpcklpd %xmm1, %xmm1  #  3     0x9  4      OPC=unpcklpd_xmm_xmm  
  retq                   #  4     0xd  1      OPC=retq              
                                                                    
.size target, .-target
