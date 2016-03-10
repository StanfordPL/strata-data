  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0xfffffffffffffff0, %rbx    #  1     0     10     OPC=movq_r64_imm64  
  callq .move_128_064_xmm1_r10_r11  #  2     0xa   5      OPC=callq_label     
  orb %bh, %bl                      #  3     0xf   2      OPC=orb_r8_rh       
  xaddq %rbx, %r11                  #  4     0x11  4      OPC=xaddq_r64_r64   
  movzwq %bx, %rbx                  #  5     0x15  4      OPC=movzwq_r64_r16  
  retq                              #  6     0x19  1      OPC=retq            
                                                                              
.size target, .-target
