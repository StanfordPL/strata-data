  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vpunpckhqdq %ymm2, %ymm2, %ymm12  #  1     0    4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vunpcklpd %ymm2, %ymm12, %ymm1    #  2     0x4  4      OPC=vunpcklpd_ymm_ymm_ymm    
  movapd %xmm12, %xmm1              #  3     0x8  5      OPC=movapd_xmm_xmm           
  retq                              #  4     0xd  1      OPC=retq                     
                                                                                      
.size target, .-target
