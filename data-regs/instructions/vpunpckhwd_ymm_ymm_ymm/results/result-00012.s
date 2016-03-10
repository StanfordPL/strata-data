  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vunpckhpd %ymm3, %ymm2, %ymm1   #  1     0     4      OPC=vunpckhpd_ymm_ymm_ymm   
  movq %xmm3, %xmm3               #  2     0x4   4      OPC=movq_xmm_xmm            
  vunpckhpd %ymm3, %ymm1, %ymm4   #  3     0x8   4      OPC=vunpckhpd_ymm_ymm_ymm   
  vpunpcklwd %ymm4, %ymm1, %ymm2  #  4     0xc   4      OPC=vpunpcklwd_ymm_ymm_ymm  
  vmovups %ymm2, %ymm1            #  5     0x10  4      OPC=vmovups_ymm_ymm         
  retq                            #  6     0x14  1      OPC=retq                    
                                                                                    
.size target, .-target
