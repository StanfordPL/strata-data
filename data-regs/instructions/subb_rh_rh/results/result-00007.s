  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode               
.target:                          #        0     0      OPC=<label>          
  movq $0xffffffffffffffc0, %r13  #  1     0     10     OPC=movq_r64_imm64   
  popcntq %r13, %rbp              #  2     0xa   5      OPC=popcntq_r64_r64  
  sbbb %bh, %ah                   #  3     0xf   2      OPC=sbbb_rh_rh       
  retq                            #  4     0x11  1      OPC=retq             
                                                                             
.size target, .-target
