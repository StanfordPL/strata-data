  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP  Bytes  Opcode             
.target:                            #        0    0      OPC=<label>        
  vmovq %xmm2, %r13                 #  1     0    5      OPC=vmovq_r64_xmm  
  movq %xmm1, %r12                  #  2     0x5  5      OPC=movq_r64_xmm   
  callq .move_064_128_r12_r13_xmm1  #  3     0xa  5      OPC=callq_label    
  retq                              #  4     0xf  1      OPC=retq           
                                                                            
.size target, .-target
