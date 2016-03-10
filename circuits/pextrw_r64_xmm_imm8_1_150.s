  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vandpd %xmm1, %xmm1, %xmm10  #  1     0     4      OPC=vandpd_xmm_xmm_xmm  
  movhlps %xmm10, %xmm1        #  2     0x4   4      OPC=movhlps_xmm_xmm     
  vmovshdup %xmm1, %xmm10      #  3     0x8   4      OPC=vmovshdup_xmm_xmm   
  vpmovzxwq %xmm10, %ymm3      #  4     0xc   5      OPC=vpmovzxwq_ymm_xmm   
  vmovd %xmm3, %ebx            #  5     0x11  4      OPC=vmovd_r32_xmm       
  retq                         #  6     0x15  1      OPC=retq                
                                                                             
.size target, .-target
