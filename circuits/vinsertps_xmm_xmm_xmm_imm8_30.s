  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode             
.target:                          #        0    0      OPC=<label>        
  callq .move_128_064_xmm2_r8_r9  #  1     0    5      OPC=callq_label    
  vmovd %r8d, %xmm1               #  2     0x5  5      OPC=vmovd_xmm_r32  
  retq                            #  3     0xa  1      OPC=retq           
                                                                          
.size target, .-target
