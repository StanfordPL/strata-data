  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode               
.target:                          #        0     0      OPC=<label>          
  movb %ah, %bh                   #  1     0     2      OPC=movb_rh_rh       
  movq $0xffffffffffffffc0, %rax  #  2     0x2   10     OPC=movq_r64_imm64   
  cbtw                            #  3     0xc   2      OPC=cbtw             
  popcntq %rax, %rsp              #  4     0xe   5      OPC=popcntq_r64_r64  
  adcb %bh, %ah                   #  5     0x13  2      OPC=adcb_rh_rh       
  retq                            #  6     0x15  1      OPC=retq             
                                                                             
.size target, .-target
