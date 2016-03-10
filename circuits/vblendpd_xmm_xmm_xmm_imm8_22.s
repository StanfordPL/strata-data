  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  movq %xmm2, %rax                  #  1     0     5      OPC=movq_r64_xmm   
  callq .move_128_064_xmm3_r10_r11  #  2     0x5   5      OPC=callq_label    
  vzeroall                          #  3     0xa   3      OPC=vzeroall       
  xchgq %r10, %rax                  #  4     0xd   3      OPC=xchgq_r64_r64  
  callq .move_064_128_r10_r11_xmm1  #  5     0x10  5      OPC=callq_label    
  retq                              #  6     0x15  1      OPC=retq           
                                                                             
.size target, .-target