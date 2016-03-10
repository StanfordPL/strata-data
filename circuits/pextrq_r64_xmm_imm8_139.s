  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  movq $0x20, %rbx                  #  1     0     10     OPC=movq_r64_imm64   
  xorw %r12w, %r12w                 #  2     0xa   4      OPC=xorw_r16_r16     
  callq .move_128_064_xmm1_r12_r13  #  3     0xe   5      OPC=callq_label      
  cmovngq %r13, %rbx                #  4     0x13  4      OPC=cmovngq_r64_r64  
  retq                              #  5     0x17  1      OPC=retq             
                                                                               
.size target, .-target
