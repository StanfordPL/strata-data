  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  movzwl %bx, %eax             #  1     0     3      OPC=movzwl_r32_r16      
  pmovzxwq %xmm2, %xmm14       #  2     0x3   6      OPC=pmovzxwq_xmm_xmm    
  vmovd %eax, %xmm6            #  3     0x9   4      OPC=vmovd_xmm_r32       
  vpmovzxwq %xmm14, %ymm12     #  4     0xd   5      OPC=vpmovzxwq_ymm_xmm   
  vxorpd %xmm12, %xmm2, %xmm1  #  5     0x12  5      OPC=vxorpd_xmm_xmm_xmm  
  vxorps %xmm1, %xmm6, %xmm1   #  6     0x17  4      OPC=vxorps_xmm_xmm_xmm  
  retq                         #  7     0x1b  1      OPC=retq                
                                                                             
.size target, .-target
