  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  vunpcklpd %xmm2, %xmm2, %xmm1         #  1     0     4      OPC=vunpcklpd_xmm_xmm_xmm  
  vmovddup %xmm1, %xmm11                #  2     0x4   4      OPC=vmovddup_xmm_xmm       
  vmovlhps %xmm2, %xmm11, %xmm10        #  3     0x8   4      OPC=vmovlhps_xmm_xmm_xmm   
  callq .move_128_256_xmm10_xmm11_ymm1  #  4     0xc   5      OPC=callq_label            
  retq                                  #  5     0x11  1      OPC=retq                   
                                                                                         
.size target, .-target
