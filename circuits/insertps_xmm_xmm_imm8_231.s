  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  vxorps %xmm2, %xmm2, %xmm0                      #  1     0     4      OPC=vxorps_xmm_xmm_xmm    
  vandps %xmm0, %xmm0, %xmm3                      #  2     0x4   4      OPC=vandps_xmm_xmm_xmm    
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  3     0x8   5      OPC=callq_label           
  unpckhps %xmm1, %xmm0                           #  4     0xd   3      OPC=unpckhps_xmm_xmm      
  vmovhlps %xmm8, %xmm0, %xmm5                    #  5     0x10  5      OPC=vmovhlps_xmm_xmm_xmm  
  vorpd %ymm5, %ymm5, %ymm12                      #  6     0x15  4      OPC=vorpd_ymm_ymm_ymm     
  movapd %xmm12, %xmm1                            #  7     0x19  5      OPC=movapd_xmm_xmm        
  retq                                            #  8     0x1e  1      OPC=retq                  
                                                                                                  
.size target, .-target
