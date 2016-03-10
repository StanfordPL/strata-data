  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movd %xmm1, %ebx    #  1     0    4      OPC=movd_r32_xmm     
  cmpq %rbx, %rbx     #  2     0x4  3      OPC=cmpq_r64_r64     
  cmovnzl %ebx, %ebx  #  3     0x7  3      OPC=cmovnzl_r32_r32  
  movzwl %bx, %ebx    #  4     0xa  3      OPC=movzwl_r32_r16   
  retq                #  5     0xd  1      OPC=retq             
                                                                
.size target, .-target
