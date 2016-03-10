  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vbroadcastsd %xmm11, %ymm1            #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm  
  movupd %xmm11, %xmm1                  #  3     0xa   5      OPC=movupd_xmm_xmm        
  movhlps %xmm10, %xmm1                 #  4     0xf   4      OPC=movhlps_xmm_xmm       
  retq                                  #  5     0x13  1      OPC=retq                  
                                                                                        
.size target, .-target