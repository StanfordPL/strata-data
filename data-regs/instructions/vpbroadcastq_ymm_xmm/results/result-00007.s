  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  movddup %xmm2, %xmm2                  #  1     0     4      OPC=movddup_xmm_xmm        
  callq .move_128_064_xmm2_r8_r9        #  2     0x4   5      OPC=callq_label            
  vzeroall                              #  3     0x9   3      OPC=vzeroall               
  vunpcklpd %xmm3, %xmm15, %xmm10       #  4     0xc   4      OPC=vunpcklpd_xmm_xmm_xmm  
  callq .move_064_128_r8_r9_xmm1        #  5     0x10  5      OPC=callq_label            
  vxorps %xmm1, %xmm6, %xmm11           #  6     0x15  4      OPC=vxorps_xmm_xmm_xmm     
  callq .move_128_256_xmm10_xmm11_ymm1  #  7     0x19  5      OPC=callq_label            
  callq .move_064_128_r8_r9_xmm1        #  8     0x1e  5      OPC=callq_label            
  retq                                  #  9     0x23  1      OPC=retq                   
                                                                                         
.size target, .-target
