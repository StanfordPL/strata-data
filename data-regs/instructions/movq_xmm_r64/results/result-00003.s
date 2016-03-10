  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP  Bytes  Opcode             
.target:                               #        0    0      OPC=<label>        
  vmovq %rbx, %xmm3                    #  1     0    5      OPC=vmovq_xmm_r64  
  callq .move_128_64_xmm3_xmm10_xmm11  #  2     0x5  5      OPC=callq_label    
  callq .move_64_128_xmm10_xmm11_xmm1  #  3     0xa  5      OPC=callq_label    
  retq                                 #  4     0xf  1      OPC=retq           
                                                                               
.size target, .-target
