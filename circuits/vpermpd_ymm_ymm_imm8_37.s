  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vsubsd %xmm2, %xmm2, %xmm6            #  2     0x5   4      OPC=vsubsd_xmm_xmm_xmm    
  vmovhlps %xmm6, %xmm6, %xmm10         #  3     0x9   4      OPC=vmovhlps_xmm_xmm_xmm  
  unpcklpd %xmm2, %xmm11                #  4     0xd   5      OPC=unpcklpd_xmm_xmm      
  callq .move_128_256_xmm10_xmm11_ymm1  #  5     0x12  5      OPC=callq_label           
  retq                                  #  6     0x17  1      OPC=retq                  
                                                                                        
.size target, .-target
