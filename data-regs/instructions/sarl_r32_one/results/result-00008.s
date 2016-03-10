  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  andl %ebx, %ebx     #  1     0    2      OPC=andl_r32_r32     
  movslq %ebx, %rbx   #  2     0x2  3      OPC=movslq_r64_r32   
  sarq $0x1, %rbx     #  3     0x5  3      OPC=sarq_r64_one     
  cmovlel %ebx, %ebx  #  4     0x8  3      OPC=cmovlel_r32_r32  
  retq                #  5     0xb  1      OPC=retq             
                                                                
.size target, .-target
