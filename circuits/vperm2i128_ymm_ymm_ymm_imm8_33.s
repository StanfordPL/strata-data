  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  callq .move_128_64_xmm3_xmm12_xmm13   #  2     0x5   5      OPC=callq_label            
  vbroadcastsd %xmm3, %ymm14            #  3     0xa   5      OPC=vbroadcastsd_ymm_xmm   
  vbroadcastsd %xmm13, %ymm2            #  4     0xf   5      OPC=vbroadcastsd_ymm_xmm   
  vunpckhpd %ymm2, %ymm14, %ymm1        #  5     0x14  4      OPC=vunpckhpd_ymm_ymm_ymm  
  movdqu %xmm11, %xmm1                  #  6     0x18  5      OPC=movdqu_xmm_xmm         
  retq                                  #  7     0x1d  1      OPC=retq                   
                                                                                         
.size target, .-target
