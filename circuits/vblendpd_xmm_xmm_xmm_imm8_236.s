  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode             
.target:                            #        0    0      OPC=<label>        
  callq .move_128_064_xmm2_r12_r13  #  1     0    5      OPC=callq_label    
  vmovq %r12, %xmm1                 #  2     0x5  5      OPC=vmovq_xmm_r64  
  callq .move_064_128_r12_r13_xmm1  #  3     0xa  5      OPC=callq_label    
  retq                              #  4     0xf  1      OPC=retq           
                                                                            
.size target, .-target
