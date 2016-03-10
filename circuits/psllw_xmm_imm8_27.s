  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  subps %xmm1, %xmm1          #  1     0     3      OPC=subps_xmm_xmm       
  vpmovzxbd %xmm1, %ymm4      #  2     0x3   5      OPC=vpmovzxbd_ymm_xmm   
  vmulps %ymm4, %ymm4, %ymm7  #  3     0x8   4      OPC=vmulps_ymm_ymm_ymm  
  movq %xmm7, %xmm1           #  4     0xc   4      OPC=movq_xmm_xmm        
  retq                        #  5     0x10  1      OPC=retq                
                                                                            
.size target, .-target
