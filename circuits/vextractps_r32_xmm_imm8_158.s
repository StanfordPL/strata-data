  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovdqu %xmm1, %xmm10            #  1     0     4      OPC=vmovdqu_xmm_xmm         
  vunpckhpd %ymm10, %ymm10, %ymm4  #  2     0x4   5      OPC=vunpckhpd_ymm_ymm_ymm   
  movq $0xfffffffffffffffd, %rbx   #  3     0x9   10     OPC=movq_r64_imm64          
  vpunpckhdq %xmm1, %xmm4, %xmm14  #  4     0x13  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovd %xmm14, %edx               #  5     0x17  4      OPC=vmovd_r32_xmm           
  xaddl %ebx, %edx                 #  6     0x1b  3      OPC=xaddl_r32_r32           
  retq                             #  7     0x1e  1      OPC=retq                    
                                                                                     
.size target, .-target
