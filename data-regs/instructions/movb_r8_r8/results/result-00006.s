  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  movq $0x80, %rdx    #  1     0     10     OPC=movq_r64_imm64   
  decw %dx            #  2     0xa   3      OPC=decw_r16         
  popcntq %rdx, %rbx  #  3     0xd   5      OPC=popcntq_r64_r64  
  xaddb %bl, %cl      #  4     0x12  3      OPC=xaddb_r8_r8      
  retq                #  5     0x15  1      OPC=retq             
                                                                 
.size target, .-target
