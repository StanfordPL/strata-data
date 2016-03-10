  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                     #  Line  RIP  Bytes  Opcode                 
.target:                   #        0    0      OPC=<label>            
  vmovshdup %xmm1, %xmm15  #  1     0    4      OPC=vmovshdup_xmm_xmm  
  pmovzxwd %xmm15, %xmm12  #  2     0x4  6      OPC=pmovzxwd_xmm_xmm   
  movd %xmm12, %ebx        #  3     0xa  5      OPC=movd_r32_xmm       
  retq                     #  4     0xf  1      OPC=retq               
                                                                       
.size target, .-target
