  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  paddd %xmm3, %xmm2                #  1     0     4      OPC=paddd_xmm_xmm  
  callq .move_128_064_xmm2_r12_r13  #  2     0x4   5      OPC=callq_label    
  vzeroall                          #  3     0x9   3      OPC=vzeroall       
  orb %r13b, %r13b                  #  4     0xc   3      OPC=orb_r8_r8      
  callq .move_064_128_r12_r13_xmm1  #  5     0xf   5      OPC=callq_label    
  retq                              #  6     0x14  1      OPC=retq           
                                                                             
.size target, .-target
