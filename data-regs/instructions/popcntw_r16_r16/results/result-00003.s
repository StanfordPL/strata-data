  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  movq $0x2, %rsi     #  1     0     10     OPC=movq_r64_imm64   
  xchgw %si, %cx      #  2     0xa   3      OPC=xchgw_r16_r16    
  popcntq %rsi, %r11  #  3     0xd   5      OPC=popcntq_r64_r64  
  movslq %r11d, %rbx  #  4     0x12  3      OPC=movslq_r64_r32   
  popcntq %rsi, %r15  #  5     0x15  5      OPC=popcntq_r64_r64  
  retq                #  6     0x1a  1      OPC=retq             
                                                                 
.size target, .-target
