  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  callq .read_of_into_rbx  #  1     0     5      OPC=callq_label      
  movzbl %bh, %ecx         #  2     0x5   3      OPC=movzbl_r32_rh    
  setng %cl                #  3     0x8   3      OPC=setng_r8         
  popcntw %cx, %si         #  4     0xb   5      OPC=popcntw_r16_r16  
  sete %ah                 #  5     0x10  3      OPC=sete_rh          
  retq                     #  6     0x13  1      OPC=retq             
                                                                      
.size target, .-target
