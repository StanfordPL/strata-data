  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovups %xmm1, %xmm2              #  1     0     4      OPC=vmovups_xmm_xmm          
  vsqrtpd %xmm1, %xmm8              #  2     0x4   4      OPC=vsqrtpd_xmm_xmm          
  vmulpd %ymm8, %ymm8, %ymm8        #  3     0x8   5      OPC=vmulpd_ymm_ymm_ymm       
  vmovss %xmm1, %xmm8, %xmm13       #  4     0xd   4      OPC=vmovss_xmm_xmm_xmm       
  vpxor %xmm8, %xmm13, %xmm1        #  5     0x11  5      OPC=vpxor_xmm_xmm_xmm        
  vpunpckhqdq %ymm1, %ymm2, %ymm15  #  6     0x16  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  movq %xmm15, %rbx                 #  7     0x1a  5      OPC=movq_r64_xmm             
  retq                              #  8     0x1f  1      OPC=retq                     
                                                                                       
.size target, .-target
