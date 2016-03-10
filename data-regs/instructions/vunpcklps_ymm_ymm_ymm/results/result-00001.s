  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  vmovddup %ymm3, %ymm10                #  1     0     4      OPC=vmovddup_ymm_ymm       
  callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x4   5      OPC=callq_label            
  vbroadcastsd %xmm13, %ymm4            #  3     0x9   5      OPC=vbroadcastsd_ymm_xmm   
  movlhps %xmm2, %xmm4                  #  4     0xe   3      OPC=movlhps_xmm_xmm        
  vunpckhps %ymm10, %ymm4, %ymm1        #  5     0x11  5      OPC=vunpckhps_ymm_ymm_ymm  
  retq                                  #  6     0x16  1      OPC=retq                   
                                                                                         
.size target, .-target
