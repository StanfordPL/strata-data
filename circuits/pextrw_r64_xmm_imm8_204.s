  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq %xmm1, %rbx                  #  1     0     5      OPC=movq_r64_xmm    
  callq .move_128_064_xmm1_r10_r11  #  2     0x5   5      OPC=callq_label     
  movzwq %r11w, %r8                 #  3     0xa   4      OPC=movzwq_r64_r16  
  xaddq %rbx, %r8                   #  4     0xe   4      OPC=xaddq_r64_r64   
  retq                              #  5     0x12  1      OPC=retq            
                                                                              
.size target, .-target
