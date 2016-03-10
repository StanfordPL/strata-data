  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vsqrtpd %xmm2, %xmm12                 #  2     0x5   4      OPC=vsqrtpd_xmm_xmm       
  vmovhlps %xmm11, %xmm12, %xmm3        #  3     0x9   5      OPC=vmovhlps_xmm_xmm_xmm  
  vbroadcastsd %xmm10, %ymm1            #  4     0xe   5      OPC=vbroadcastsd_ymm_xmm  
  movddup %xmm3, %xmm1                  #  5     0x13  4      OPC=movddup_xmm_xmm       
  retq                                  #  6     0x17  1      OPC=retq                  
                                                                                        
.size target, .-target
