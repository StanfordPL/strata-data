  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  movshdup %xmm1, %xmm0  #  1     0    4      OPC=movshdup_xmm_xmm  
  pmovzxwd %xmm0, %xmm4  #  2     0x4  5      OPC=pmovzxwd_xmm_xmm  
  vmovd %xmm4, %ebx      #  3     0x9  4      OPC=vmovd_r32_xmm     
  retq                   #  4     0xd  1      OPC=retq              
                                                                    
.size target, .-target
