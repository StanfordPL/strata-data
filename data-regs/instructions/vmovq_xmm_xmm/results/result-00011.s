  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP  Bytes  Opcode             
.target:                            #        0    0      OPC=<label>        
  callq .move_128_064_xmm2_r10_r11  #  1     0    5      OPC=callq_label    
  vmovq %r10, %xmm1                 #  2     0x5  5      OPC=vmovq_xmm_r64  
  retq                              #  3     0xa  1      OPC=retq           
                                                                            
.size target, .-target
