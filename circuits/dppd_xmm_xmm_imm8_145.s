  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP   Bytes  Opcode                   
.target:                        #        0     0      OPC=<label>              
  vmulpd %xmm2, %xmm1, %xmm4    #  1     0     4      OPC=vmulpd_xmm_xmm_xmm   
  vorpd %ymm4, %ymm4, %ymm12    #  2     0x4   4      OPC=vorpd_ymm_ymm_ymm    
  vandnpd %ymm4, %ymm12, %ymm9  #  3     0x8   4      OPC=vandnpd_ymm_ymm_ymm  
  movq %xmm4, %xmm1             #  4     0xc   4      OPC=movq_xmm_xmm         
  addsd %xmm9, %xmm1            #  5     0x10  5      OPC=addsd_xmm_xmm        
  retq                          #  6     0x15  1      OPC=retq                 
                                                                               
.size target, .-target
