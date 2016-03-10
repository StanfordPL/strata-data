  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  vpmovzxdq %xmm2, %ymm9              #  1     0     5      OPC=vpmovzxdq_ymm_xmm      
  vphsubd %ymm2, %ymm9, %ymm14        #  2     0x5   5      OPC=vphsubd_ymm_ymm_ymm    
  vunpcklpd %ymm14, %ymm2, %ymm1      #  3     0xa   5      OPC=vunpcklpd_ymm_ymm_ymm  
  callq .move_256_128_ymm2_xmm8_xmm9  #  4     0xf   5      OPC=callq_label            
  vmovsd %xmm14, %xmm9, %xmm0         #  5     0x14  5      OPC=vmovsd_xmm_xmm_xmm     
  movhlps %xmm0, %xmm1                #  6     0x19  3      OPC=movhlps_xmm_xmm        
  retq                                #  7     0x1c  1      OPC=retq                   
                                                                                       
.size target, .-target
