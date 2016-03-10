  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  vmovlhps %xmm1, %xmm2, %xmm4         #  1     0     4      OPC=vmovlhps_xmm_xmm_xmm  
  vxorpd %xmm2, %xmm4, %xmm13          #  2     0x4   4      OPC=vxorpd_xmm_xmm_xmm    
  vandnpd %ymm13, %ymm13, %ymm11       #  3     0x8   5      OPC=vandnpd_ymm_ymm_ymm   
  movddup %xmm11, %xmm14               #  4     0xd   5      OPC=movddup_xmm_xmm       
  vmovsd %xmm14, %xmm4, %xmm10         #  5     0x12  5      OPC=vmovsd_xmm_xmm_xmm    
  callq .move_64_128_xmm10_xmm11_xmm1  #  6     0x17  5      OPC=callq_label           
  retq                                 #  7     0x1c  1      OPC=retq                  
                                                                                       
.size target, .-target
