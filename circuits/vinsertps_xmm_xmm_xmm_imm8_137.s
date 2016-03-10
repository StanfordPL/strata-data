  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vcvtsd2ss %xmm10, %xmm2, %xmm1                  #  2     0x5   5      OPC=vcvtsd2ss_xmm_xmm_xmm   
  vpunpckhdq %xmm8, %xmm2, %xmm11                 #  3     0xa   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  vunpcklpd %ymm11, %ymm1, %ymm1                  #  4     0xf   5      OPC=vunpcklpd_ymm_ymm_ymm   
  pand %xmm2, %xmm1                               #  5     0x14  4      OPC=pand_xmm_xmm            
  retq                                            #  6     0x18  1      OPC=retq                    
                                                                                                    
.size target, .-target
