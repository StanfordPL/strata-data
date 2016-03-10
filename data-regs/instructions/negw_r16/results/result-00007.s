  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode               
.target:                          #        0     0      OPC=<label>          
  movq $0xffffffffffffffff, %rax  #  1     0     10     OPC=movq_r64_imm64   
  popcntw %ax, %r12w              #  2     0xa   6      OPC=popcntw_r16_r16  
  adcw %ax, %bx                   #  3     0x10  3      OPC=adcw_r16_r16     
  notw %bx                        #  4     0x13  3      OPC=notw_r16         
  callq .set_szp_for_bx           #  5     0x16  5      OPC=callq_label      
  retq                            #  6     0x1b  1      OPC=retq             
                                                                             
.size target, .-target
