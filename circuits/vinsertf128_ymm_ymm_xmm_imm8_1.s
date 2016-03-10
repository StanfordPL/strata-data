  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm3_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  vbroadcastsd %xmm13, %ymm14          #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm   
  vpbroadcastq %xmm3, %ymm1            #  3     0xa   5      OPC=vpbroadcastq_ymm_xmm   
  vunpcklpd %ymm14, %ymm1, %ymm1       #  4     0xf   5      OPC=vunpcklpd_ymm_ymm_ymm  
  movupd %xmm2, %xmm1                  #  5     0x14  4      OPC=movupd_xmm_xmm         
  retq                                 #  6     0x18  1      OPC=retq                   
                                                                                        
.size target, .-target
