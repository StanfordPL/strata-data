  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0x2, %rbx                   #  1     0     10     OPC=movq_r64_imm64  
  callq .move_128_064_xmm1_r10_r11  #  2     0xa   5      OPC=callq_label     
  xaddq %rbx, %rbx                  #  3     0xf   4      OPC=xaddq_r64_r64   
  callq .read_of_into_rbx           #  4     0x13  5      OPC=callq_label     
  movzbw %r10b, %r8w                #  5     0x18  5      OPC=movzbw_r16_r8   
  xchgb %r8b, %bl                   #  6     0x1d  3      OPC=xchgb_r8_r8     
  retq                              #  7     0x20  1      OPC=retq            
                                                                              
.size target, .-target
