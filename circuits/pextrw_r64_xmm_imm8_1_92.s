  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vunpckhpd %xmm1, %xmm1, %xmm3  #  1     0    4      OPC=vunpckhpd_xmm_xmm_xmm  
  movq %xmm3, %rdi               #  2     0x4  5      OPC=movq_r64_xmm           
  movzwl %di, %esi               #  3     0x9  3      OPC=movzwl_r32_r16         
  movl %esi, %ebx                #  4     0xc  2      OPC=movl_r32_r32           
  retq                           #  5     0xe  1      OPC=retq                   
                                                                                 
.size target, .-target
