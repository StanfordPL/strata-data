  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  andnpd %xmm1, %xmm1    #  1     0    4      OPC=andnpd_xmm_xmm    
  vmovdqa %xmm1, %xmm9   #  2     0x4  4      OPC=vmovdqa_xmm_xmm   
  unpcklpd %xmm9, %xmm1  #  3     0x8  5      OPC=unpcklpd_xmm_xmm  
  retq                   #  4     0xd  1      OPC=retq              
                                                                    
.size target, .-target
