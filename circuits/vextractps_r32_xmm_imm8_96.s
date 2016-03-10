  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                #  Line  RIP  Bytes  Opcode             
.target:              #        0    0      OPC=<label>        
  maxss %xmm1, %xmm1  #  1     0    4      OPC=maxss_xmm_xmm  
  movd %xmm1, %eax    #  2     0x4  4      OPC=movd_r32_xmm   
  movl %eax, %ebx     #  3     0x8  2      OPC=movl_r32_r32   
  retq                #  4     0xa  1      OPC=retq           
                                                              
.size target, .-target
