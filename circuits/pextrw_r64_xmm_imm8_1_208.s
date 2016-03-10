  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0x0, %rbx                   #  1     0     10     OPC=movq_r64_imm64  
  xchgb %bh, %bl                    #  2     0xa   2      OPC=xchgb_r8_rh     
  callq .move_128_064_xmm1_r10_r11  #  3     0xc   5      OPC=callq_label     
  xaddw %bx, %r10w                  #  4     0x11  5      OPC=xaddw_r16_r16   
  retq                              #  5     0x16  1      OPC=retq            
                                                                              
.size target, .-target
