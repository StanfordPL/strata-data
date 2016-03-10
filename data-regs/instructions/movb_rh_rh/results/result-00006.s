  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  movq $0x5, %rax     #  1     0     10     OPC=movq_r64_imm64   
  popcntw %ax, %r10w  #  2     0xa   6      OPC=popcntw_r16_r16  
  setae %bl           #  3     0x10  3      OPC=setae_r8         
  xchgw %ax, %bx      #  4     0x13  2      OPC=xchgw_r16_ax     
  decw %ax            #  5     0x15  3      OPC=decw_r16         
  retq                #  6     0x18  1      OPC=retq             
                                                                 
.size target, .-target
