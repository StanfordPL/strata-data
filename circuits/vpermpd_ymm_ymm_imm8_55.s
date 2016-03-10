  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  vbroadcastsd %xmm2, %ymm10            #  1     0     5      OPC=vbroadcastsd_ymm_xmm   
  callq .move_256_128_ymm2_xmm10_xmm11  #  2     0x5   5      OPC=callq_label            
  vunpckhpd %xmm11, %xmm11, %xmm15      #  3     0xa   5      OPC=vunpckhpd_xmm_xmm_xmm  
  movapd %xmm15, %xmm2                  #  4     0xf   5      OPC=movapd_xmm_xmm         
  vunpckhpd %ymm10, %ymm2, %ymm9        #  5     0x14  5      OPC=vunpckhpd_ymm_ymm_ymm  
  vmovaps %ymm9, %ymm1                  #  6     0x19  5      OPC=vmovaps_ymm_ymm        
  retq                                  #  7     0x1e  1      OPC=retq                   
                                                                                         
.size target, .-target
