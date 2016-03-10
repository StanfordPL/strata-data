  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  xorw %di, %di                     #  1     0     3      OPC=xorw_r16_r16    
  callq .move_128_064_xmm2_r12_r13  #  2     0x3   5      OPC=callq_label     
  cmovpq %rbx, %r13                 #  3     0x8   4      OPC=cmovpq_r64_r64  
  vzeroall                          #  4     0xc   3      OPC=vzeroall        
  callq .move_064_128_r12_r13_xmm1  #  5     0xf   5      OPC=callq_label     
  retq                              #  6     0x14  1      OPC=retq            
                                                                              
.size target, .-target
