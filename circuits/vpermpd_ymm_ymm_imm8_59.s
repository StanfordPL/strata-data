  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  callq .move_128_256_xmm10_xmm11_ymm3  #  2     0x5   5      OPC=callq_label            
  vbroadcastsd %xmm2, %ymm13            #  3     0xa   5      OPC=vbroadcastsd_ymm_xmm   
  vunpckhpd %ymm13, %ymm3, %ymm1        #  4     0xf   5      OPC=vunpckhpd_ymm_ymm_ymm  
  vunpckhpd %xmm11, %xmm11, %xmm2       #  5     0x14  5      OPC=vunpckhpd_xmm_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1   #  6     0x19  5      OPC=callq_label            
  movhlps %xmm2, %xmm1                  #  7     0x1e  3      OPC=movhlps_xmm_xmm        
  retq                                  #  8     0x21  1      OPC=retq                   
                                                                                         
.size target, .-target
