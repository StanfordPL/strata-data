  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                    
.target:                       #        0     0      OPC=<label>               
  vbroadcastsd %xmm2, %ymm10   #  1     0     5      OPC=vbroadcastsd_ymm_xmm  
  pmovzxwd %xmm10, %xmm3       #  2     0x5   6      OPC=pmovzxwd_xmm_xmm      
  vpmovzxwd %xmm3, %ymm11      #  3     0xb   5      OPC=vpmovzxwd_ymm_xmm     
  vpand %ymm11, %ymm11, %ymm1  #  4     0x10  5      OPC=vpand_ymm_ymm_ymm     
  retq                         #  5     0x15  1      OPC=retq                  
                                                                               
.size target, .-target
