  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movaps %xmm2, %xmm2               #  1     0     3      OPC=movaps_xmm_xmm  
  callq .move_128_064_xmm2_r12_r13  #  2     0x3   5      OPC=callq_label     
  xchgq %r13, %rbx                  #  3     0x8   3      OPC=xchgq_r64_r64   
  vzeroall                          #  4     0xb   3      OPC=vzeroall        
  callq .move_064_128_r12_r13_xmm1  #  5     0xe   5      OPC=callq_label     
  retq                              #  6     0x13  1      OPC=retq            
                                                                              
.size target, .-target
