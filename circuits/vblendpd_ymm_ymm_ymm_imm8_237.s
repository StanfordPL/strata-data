  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP   Bytes  Opcode                    
.target:                        #        0     0      OPC=<label>               
  vpmovzxbq %xmm3, %ymm9        #  1     0     5      OPC=vpmovzxbq_ymm_xmm     
  vmovupd %ymm3, %ymm1          #  2     0x5   4      OPC=vmovupd_ymm_ymm       
  vmovhlps %xmm2, %xmm9, %xmm6  #  3     0x9   4      OPC=vmovhlps_xmm_xmm_xmm  
  punpcklqdq %xmm6, %xmm1       #  4     0xd   4      OPC=punpcklqdq_xmm_xmm    
  retq                          #  5     0x11  1      OPC=retq                  
                                                                                
.size target, .-target
