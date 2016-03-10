  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vbroadcastss %xmm2, %ymm12                      #  2     0x5   5      OPC=vbroadcastss_ymm_xmm   
  vmovups %xmm8, %xmm2                            #  3     0xa   5      OPC=vmovups_xmm_xmm        
  movups %xmm11, %xmm8                            #  4     0xf   4      OPC=movups_xmm_xmm         
  vunpcklpd %ymm12, %ymm2, %ymm10                 #  5     0x13  5      OPC=vunpcklpd_ymm_ymm_ymm  
  vminpd %ymm12, %ymm10, %ymm11                   #  6     0x18  5      OPC=vminpd_ymm_ymm_ymm     
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  7     0x1d  5      OPC=callq_label            
  retq                                            #  8     0x22  1      OPC=retq                   
                                                                                                   
.size target, .-target
