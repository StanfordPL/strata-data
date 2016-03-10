  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  popcntq %rcx, %rbx  #  1     0     5      OPC=popcntq_r64_r64  
  xchgq %rdx, %rcx    #  2     0x5   3      OPC=xchgq_r64_r64    
  sarq %cl, %rdx      #  3     0x8   3      OPC=sarq_r64_cl      
  xorw %cx, %cx       #  4     0xb   3      OPC=xorw_r16_r16     
  cmovzq %rdx, %rbx   #  5     0xe   4      OPC=cmovzq_r64_r64   
  retq                #  6     0x12  1      OPC=retq             
                                                                 
.size target, .-target
