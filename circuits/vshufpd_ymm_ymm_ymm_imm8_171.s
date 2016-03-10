  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  movapd %xmm13, %xmm2                 #  2     0x5   5      OPC=movapd_xmm_xmm         
  vmovddup %ymm2, %ymm4                #  3     0xa   4      OPC=vmovddup_ymm_ymm       
  vunpckhpd %ymm3, %ymm4, %ymm1        #  4     0xe   4      OPC=vunpckhpd_ymm_ymm_ymm  
  retq                                 #  5     0x12  1      OPC=retq                   
                                                                                        
.size target, .-target
