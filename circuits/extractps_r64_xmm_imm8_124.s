  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  pmovzxdq %xmm1, %xmm9  #  1     0    6      OPC=pmovzxdq_xmm_xmm  
  movd %xmm9, %ebp       #  2     0x6  5      OPC=movd_r32_xmm      
  movl %ebp, %ebx        #  3     0xb  2      OPC=movl_r32_r32      
  retq                   #  4     0xd  1      OPC=retq              
                                                                    
.size target, .-target
