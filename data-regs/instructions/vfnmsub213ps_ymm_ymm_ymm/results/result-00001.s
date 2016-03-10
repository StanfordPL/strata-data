  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                        
.target:                            #        0     0      OPC=<label>                   
  vfnmsub231ps %ymm1, %ymm2, %ymm3  #  1     0     5      OPC=vfnmsub231ps_ymm_ymm_ymm  
  vmovupd %ymm3, %ymm5              #  2     0x5   4      OPC=vmovupd_ymm_ymm           
  vminpd %ymm3, %ymm3, %ymm7        #  3     0x9   4      OPC=vminpd_ymm_ymm_ymm        
  vminpd %ymm5, %ymm3, %ymm9        #  4     0xd   4      OPC=vminpd_ymm_ymm_ymm        
  vminpd %ymm9, %ymm7, %ymm1        #  5     0x11  5      OPC=vminpd_ymm_ymm_ymm        
  retq                              #  6     0x16  1      OPC=retq                      
                                                                                        
.size target, .-target
