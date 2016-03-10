  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  mulsd %xmm2, %xmm1              #  1     0     4      OPC=mulsd_xmm_xmm          
  vpxor %ymm13, %ymm13, %ymm0     #  2     0x4   5      OPC=vpxor_ymm_ymm_ymm      
  vmovlhps %xmm1, %xmm0, %xmm9    #  3     0x9   4      OPC=vmovlhps_xmm_xmm_xmm   
  vaddsubpd %xmm9, %xmm0, %xmm15  #  4     0xd   5      OPC=vaddsubpd_xmm_xmm_xmm  
  movdqa %xmm15, %xmm1            #  5     0x12  5      OPC=movdqa_xmm_xmm         
  retq                            #  6     0x17  1      OPC=retq                   
                                                                                   
.size target, .-target
