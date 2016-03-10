  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovlhps %xmm1, %xmm1, %xmm8    #  1     0     4      OPC=vmovlhps_xmm_xmm_xmm   
  xorpd %xmm1, %xmm1              #  2     0x4   4      OPC=xorpd_xmm_xmm          
  vmovdqa %xmm1, %xmm13           #  3     0x8   4      OPC=vmovdqa_xmm_xmm        
  vunpckhpd %ymm13, %ymm8, %ymm6  #  4     0xc   5      OPC=vunpckhpd_ymm_ymm_ymm  
  vmulpd %xmm2, %xmm6, %xmm11     #  5     0x11  4      OPC=vmulpd_xmm_xmm_xmm     
  addsd %xmm11, %xmm1             #  6     0x15  5      OPC=addsd_xmm_xmm          
  retq                            #  7     0x1a  1      OPC=retq                   
                                                                                   
.size target, .-target
