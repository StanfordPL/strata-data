  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  callq .move_128_064_xmm1_r10_r11  #  1     0     5      OPC=callq_label    
  movzbq %r10b, %rbp                #  2     0x5   4      OPC=movzbq_r64_r8  
  xchgw %bp, %r10w                  #  3     0x9   4      OPC=xchgw_r16_r16  
  movq %rbp, %rbx                   #  4     0xd   3      OPC=movq_r64_r64   
  retq                              #  5     0x10  1      OPC=retq           
                                                                             
.size target, .-target
