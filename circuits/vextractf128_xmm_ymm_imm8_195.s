  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm1_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vaddss %xmm10, %xmm11, %xmm14         #  2     0x5   5      OPC=vaddss_xmm_xmm_xmm     
  vmovddup %xmm11, %xmm4                #  3     0xa   5      OPC=vmovddup_xmm_xmm       
  vunpckhpd %xmm14, %xmm4, %xmm1        #  4     0xf   5      OPC=vunpckhpd_xmm_xmm_xmm  
  retq                                  #  5     0x14  1      OPC=retq                   
                                                                                         
.size target, .-target
