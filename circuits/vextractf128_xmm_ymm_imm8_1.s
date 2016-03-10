  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                        
.target:                                #        0     0      OPC=<label>                   
  vminpd %ymm1, %ymm1, %ymm2            #  1     0     4      OPC=vminpd_ymm_ymm_ymm        
  vmovupd %ymm1, %ymm12                 #  2     0x4   4      OPC=vmovupd_ymm_ymm           
  vfnmsub231ps %xmm1, %xmm12, %xmm1     #  3     0x8   5      OPC=vfnmsub231ps_xmm_xmm_xmm  
  callq .move_256_128_ymm2_xmm12_xmm13  #  4     0xd   5      OPC=callq_label               
  movdqa %xmm13, %xmm1                  #  5     0x12  5      OPC=movdqa_xmm_xmm            
  retq                                  #  6     0x17  1      OPC=retq                      
                                                                                            
.size target, .-target
