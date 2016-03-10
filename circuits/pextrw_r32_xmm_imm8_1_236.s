  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vunpckhps %xmm1, %xmm1, %xmm10  #  1     0     4      OPC=vunpckhps_xmm_xmm_xmm  
  pmovzxwq %xmm10, %xmm4          #  2     0x4   6      OPC=pmovzxwq_xmm_xmm       
  pmovsxdq %xmm4, %xmm9           #  3     0xa   6      OPC=pmovsxdq_xmm_xmm       
  vmovq %xmm9, %rbx               #  4     0x10  5      OPC=vmovq_r64_xmm          
  retq                            #  5     0x15  1      OPC=retq                   
                                                                                   
.size target, .-target
