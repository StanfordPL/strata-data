  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  cmovol %ebx, %ecx   #  1     0    3      OPC=cmovol_r32_r32   
  popcntq %rbx, %r10  #  2     0x3  5      OPC=popcntq_r64_r64  
  cmovnsl %ecx, %ebx  #  3     0x8  3      OPC=cmovnsl_r32_r32  
  retq                #  4     0xb  1      OPC=retq             
                                                                
.size target, .-target
