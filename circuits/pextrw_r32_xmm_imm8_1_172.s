  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0xfffffffffffffff0, %rbx    #  1     0     10     OPC=movq_r64_imm64  
  callq .move_128_064_xmm1_r10_r11  #  2     0xa   5      OPC=callq_label     
  subl %ebx, %ebx                   #  3     0xf   2      OPC=subl_r32_r32    
  xchgw %r11w, %bx                  #  4     0x11  4      OPC=xchgw_r16_r16   
  retq                              #  5     0x15  1      OPC=retq            
                                                                              
.size target, .-target
