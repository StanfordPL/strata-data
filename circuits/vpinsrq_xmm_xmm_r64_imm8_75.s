  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label    
  movq %rbx, %r13                   #  2     0x5   3      OPC=movq_r64_r64   
  xaddw %r13w, %bx                  #  3     0x8   5      OPC=xaddw_r16_r16  
  vzeroall                          #  4     0xd   3      OPC=vzeroall       
  callq .move_064_128_r12_r13_xmm1  #  5     0x10  5      OPC=callq_label    
  retq                              #  6     0x15  1      OPC=retq           
                                                                             
.size target, .-target
