  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                       
.target:                              #        0     0      OPC=<label>                  
  vandps %xmm2, %xmm1, %xmm15         #  1     0     4      OPC=vandps_xmm_xmm_xmm       
  vpmovzxwd %xmm15, %ymm15            #  2     0x4   5      OPC=vpmovzxwd_ymm_xmm        
  vandnps %xmm15, %xmm15, %xmm12      #  3     0x9   5      OPC=vandnps_xmm_xmm_xmm      
  vpunpckhqdq %ymm15, %ymm12, %ymm12  #  4     0xe   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  movddup %xmm12, %xmm1               #  5     0x13  5      OPC=movddup_xmm_xmm          
  retq                                #  6     0x18  1      OPC=retq                     
                                                                                         
.size target, .-target
