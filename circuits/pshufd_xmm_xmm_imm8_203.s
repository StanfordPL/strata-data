  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  vpbroadcastd %xmm2, %xmm9            #  1     0     5      OPC=vpbroadcastd_xmm_xmm   
  callq .move_128_64_xmm2_xmm12_xmm13  #  2     0x5   5      OPC=callq_label            
  vmovups %xmm13, %xmm4                #  3     0xa   5      OPC=vmovups_xmm_xmm        
  vunpcklps %ymm9, %ymm4, %ymm7        #  4     0xf   5      OPC=vunpcklps_ymm_ymm_ymm  
  vunpckhps %xmm2, %xmm7, %xmm11       #  5     0x14  4      OPC=vunpckhps_xmm_xmm_xmm  
  movupd %xmm11, %xmm1                 #  6     0x18  5      OPC=movupd_xmm_xmm         
  retq                                 #  7     0x1d  1      OPC=retq                   
                                                                                        
.size target, .-target
