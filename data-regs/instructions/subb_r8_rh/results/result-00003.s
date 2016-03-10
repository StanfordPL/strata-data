  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode               
.target:                          #        0     0      OPC=<label>          
  movq $0xfffffffffffffff9, %rcx  #  1     0     10     OPC=movq_r64_imm64   
  popcntl %ecx, %r15d             #  2     0xa   5      OPC=popcntl_r32_r32  
  sbbb %ah, %bl                   #  3     0xf   2      OPC=sbbb_r8_rh       
  retq                            #  4     0x11  1      OPC=retq             
                                                                             
.size target, .-target
