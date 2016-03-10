  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                       #  Line  RIP  Bytes  Opcode                    
.target:                     #        0    0      OPC=<label>               
  vmovdqa %xmm2, %xmm1       #  1     0    4      OPC=vmovdqa_xmm_xmm       
  vpbroadcastq %xmm3, %xmm5  #  2     0x4  5      OPC=vpbroadcastq_xmm_xmm  
  punpckhqdq %xmm5, %xmm1    #  3     0x9  4      OPC=punpckhqdq_xmm_xmm    
  retq                       #  4     0xd  1      OPC=retq                  
                                                                            
.size target, .-target
