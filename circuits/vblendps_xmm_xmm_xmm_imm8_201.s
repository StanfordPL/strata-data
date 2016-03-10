  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vmovshdup %xmm3, %xmm13                       #  2     0x5   4      OPC=vmovshdup_xmm_xmm      
  vmovss %xmm4, %xmm2, %xmm1                    #  3     0x9   4      OPC=vmovss_xmm_xmm_xmm     
  vunpckhps %xmm13, %xmm2, %xmm6                #  4     0xd   5      OPC=vunpckhps_xmm_xmm_xmm  
  callq .move_256_128_ymm1_xmm12_xmm13          #  5     0x12  5      OPC=callq_label            
  vpand %xmm12, %xmm1, %xmm1                    #  6     0x17  5      OPC=vpand_xmm_xmm_xmm      
  vunpcklpd %xmm6, %xmm1, %xmm1                 #  7     0x1c  4      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                                          #  8     0x20  1      OPC=retq                   
                                                                                                 
.size target, .-target
