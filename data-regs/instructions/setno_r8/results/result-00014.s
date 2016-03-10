  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode               
.target:            #        0     0      OPC=<label>          
  movq $0x0, %rbx   #  1     0     10     OPC=movq_r64_imm64   
  setno %bh         #  2     0xa   3      OPC=setno_rh         
  popcntw %bx, %bx  #  3     0xd   5      OPC=popcntw_r16_r16  
  retq              #  4     0x12  1      OPC=retq             
                                                               
.size target, .-target
