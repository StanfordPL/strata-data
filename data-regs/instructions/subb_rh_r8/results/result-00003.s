  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode               
.target:                          #        0     0      OPC=<label>          
  movq $0xfffffffffffffff9, %rbp  #  1     0     10     OPC=movq_r64_imm64   
  shlb $0x1, %bpl                 #  2     0xa   2      OPC=shlb_r8_one      
  popcntl %ebp, %esi              #  3     0xc   4      OPC=popcntl_r32_r32  
  sbbb %bl, %ah                   #  4     0x10  2      OPC=sbbb_rh_r8       
  retq                            #  5     0x12  1      OPC=retq             
                                                                             
.size target, .-target
