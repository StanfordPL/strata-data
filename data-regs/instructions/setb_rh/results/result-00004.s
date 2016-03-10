  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  movq $0x0, %rax          #  1     0     10     OPC=movq_r64_imm64   
  setnae %ah               #  2     0xa   3      OPC=setnae_rh        
  popcntq %rax, %rsi       #  3     0xd   5      OPC=popcntq_r64_r64  
  callq .read_of_into_rbx  #  4     0x12  5      OPC=callq_label      
  addw %bx, %ax            #  5     0x17  3      OPC=addw_r16_r16     
  retq                     #  6     0x1a  1      OPC=retq             
                                                                      
.size target, .-target
