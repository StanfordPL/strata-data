  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vcvtss2sd %xmm1, %xmm1, %xmm7  #  1     0     4      OPC=vcvtss2sd_xmm_xmm_xmm  
  vcvtpd2dq %ymm7, %xmm4         #  2     0x4   4      OPC=vcvtpd2dq_xmm_ymm      
  vmovdqa %xmm4, %xmm12          #  3     0x8   4      OPC=vmovdqa_xmm_xmm        
  movd %xmm12, %ebx              #  4     0xc   5      OPC=movd_r32_xmm           
  retq                           #  5     0x11  1      OPC=retq                   
                                                                                  
.size target, .-target
