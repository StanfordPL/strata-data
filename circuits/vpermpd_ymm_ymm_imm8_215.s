  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm8_xmm9    #  1     0     5      OPC=callq_label            
  vunpckhpd %xmm8, %xmm9, %xmm12        #  2     0x5   5      OPC=vunpckhpd_xmm_xmm_xmm  
  movddup %xmm12, %xmm13                #  3     0xa   5      OPC=movddup_xmm_xmm        
  movhlps %xmm2, %xmm13                 #  4     0xf   4      OPC=movhlps_xmm_xmm        
  callq .move_128_256_xmm12_xmm13_ymm1  #  5     0x13  5      OPC=callq_label            
  retq                                  #  6     0x18  1      OPC=retq                   
                                                                                         
.size target, .-target
