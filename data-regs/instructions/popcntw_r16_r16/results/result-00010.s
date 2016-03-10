  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  movq $0x2, %rdx     #  1     0     10     OPC=movq_r64_imm64   
  xchgw %cx, %dx      #  2     0xa   3      OPC=xchgw_r16_r16    
  popcntq %rdx, %rbx  #  3     0xd   5      OPC=popcntq_r64_r64  
  retq                #  4     0x12  1      OPC=retq             
                                                                 
.size target, .-target
