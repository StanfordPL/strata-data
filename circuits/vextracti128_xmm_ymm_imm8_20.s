  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  vmovdqa %xmm1, %xmm14                #  1     0     4      OPC=vmovdqa_xmm_xmm          
  callq .move_128_64_xmm1_xmm12_xmm13  #  2     0x4   5      OPC=callq_label              
  vfmadd213ss %xmm13, %xmm14, %xmm1    #  3     0x9   5      OPC=vfmadd213ss_xmm_xmm_xmm  
  callq .move_64_128_xmm12_xmm13_xmm1  #  4     0xe   5      OPC=callq_label              
  retq                                 #  5     0x13  1      OPC=retq                     
                                                                                          
.size target, .-target
